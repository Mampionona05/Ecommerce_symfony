<?php

namespace App\Controller;

use App\Entity\Order;
use App\Entity\Product;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\Routing\Annotation\Route;
use Stripe\Checkout\Session;
use Stripe\Stripe;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;

class StripeController extends AbstractController
{
    private $entityManager;
    private $url;

    public function __construct(EntityManagerInterface $entityManager, UrlGeneratorInterface $url) {
        $this->entityManager = $entityManager;
        $this->url = $url;
    }

    #[Route('/commande/create-session/{reference}', name: 'app_stripe_create_session')]
    public function index($reference): RedirectResponse
    {
        $products_for_stripe = [];
        $YOUR_DOMAIN = "http://localhost:8000/";

        $order = $this->entityManager->getRepository(Order::Class)->findOneBy(['reference' => $reference]);

        if (!$order) {
            return $this->redirectToRoute('app_cart');
        }

        
        foreach ($order->getOrderDetails()->getValues() as $product) {
            $product_object = $this->entityManager->getRepository(Product::Class)->findOneByName($product->getProduct());
            $products_for_stripe[] = [
                'price_data' => [
                    'currency' => 'mga',
                    'unit_amount' => $product->getPrice() / 100,
                    'product_data' => [
                        'name' => $product->getProduct(),
                        'images' => [$YOUR_DOMAIN."/imgUploads/".$product_object->getIllustration()],
                    ],
                ],
                'quantity' => $product->getQuantity(),
            ];
        }

        $products_for_stripe[] = [
            'price_data' => [
                'currency' => 'mga',  
                'unit_amount' => $order->getCarrierPrice() / 100,
                'product_data' => [
                    'name' => $order->getCarrierName(),
                    'images' => [$YOUR_DOMAIN],
                ],
            ],
            'quantity' => 1,
        ];

        Stripe::setApiKey('sk_test_51NGdqCHH8fG4RIq2JS6Q8KK2paKKUlpUvHud02lncPuNWxBbLeAyT5hnEqyq2GeDz648xdJXwLqifhfHu5zxMZMQ00jZRB3Mjp');

        $checkout_session = Session::create([
            'customer_email' => $this->getUser()->getEmail(),
            'payment_method_types' => ['card'],
            'line_items' => [
                $products_for_stripe
            ],
            'mode' => 'payment',
            'success_url' => $this->url->generate('app_order_validate', ['reference' => $reference], UrlGeneratorInterface::ABSOLUTE_URL),
            'cancel_url' => $this->url->generate('app_order_cancel', ['reference' => $reference], UrlGeneratorInterface::ABSOLUTE_URL),
        ]);

        $response =  new RedirectResponse($checkout_session->url);
        return $response;
    }
    
}
