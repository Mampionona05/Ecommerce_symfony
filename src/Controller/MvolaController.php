<?php

namespace App\Controller;

use App\Classe\Cart;
use App\Entity\Order;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use MVolaphp\Telma as MVola;
use MVolaphp\Money;
use MVolaphp\Objects\{Phone, PayIn, KeyValue};

class MvolaController extends AbstractController
{
    #[Route('/Mvola', name: 'app_mvola')]
    public function index(EntityManagerInterface $entityManager, Cart $cart, $reference): Response
    {
        $order = $entityManager->getRepository(Order::Class)->findOneByRefence($reference);

        $credentials = array(
            // Customer id
            'client_id'		=> '6pOj6Nxzzats4iKusSdhh31oi5Ya',
            // Customer secret
            'client_secret'		=> 'eXIKXRp9Xh9NKsQdNY8y8GWfWFwa',
            // The merchant number
            'merchant_number'	=> '0343500003',
            // Set true to production
            'production'	  	=> false,
            // company_name
            'partner_name'		=> "ecommerce",
            // Set the lang
            'lang'				=> 'MG',
        );
        
        // Path to cache that is enable to read and write
        $cache = __DIR__.'/cache';
        
        try {
        
            $mvola = new MVola($credentials, $cache);
        
            // ...
        } catch (MVolaphp\Exception $e) {
        
            echo $e->getMessage().PHP_EOL;
        
            var_dump($e->getData());
        }

        $payDetails = new PayIn();

        foreach ($order->getOrderDetails()->getValues() as $product) {
            $amount = $product->getPrice();
        }

        $amount = $amount + $order->getCarrierPrice();

        // Amount
        $money = new Money('EURO', $amount);

        $payDetails->amount = $money;

        // User to retreive the amount
        $debit = new KeyValue();
        $debit->addPairObject(new Phone("0343500004"));
        $payDetails->debitParty = $debit;

        // Credited party not obligatoire if has been set in options

        // $merchant = new KeyValue();
        // $merchant->addPairObject(new Phone("0343500004"));
        // $payDetails->creditParty = $merchant;

        // Set description text
        $payDetails->descriptionText = "Test payement";

        $meta = new KeyValue();
        $meta->add('partnerName', "Company name");
        // $meta->add('fc', 'USD');
        // $meta->add('amountFc', 1);

        // Add metadata information
        $payDetails->metadata = $meta;

        // Put callback url
        $mvola->setCallbackUrl("https://example.com/mycallback");

        // Make a payement 	
        $response = $mvola->payIn($payDetails);

        // print_r($response);
        return $response;
    }
}
