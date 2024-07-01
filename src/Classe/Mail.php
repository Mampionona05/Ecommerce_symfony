<?php

namespace App\Classe;

use Mailjet\Client;
use Mailjet\Resources;

Class Mail 
{
    private $api_key = '9fa9ee117e6f2ca00ecde86c6492a595';
    private $api_key_secret = '6e05a606b99cfc34bc5ef9d11a4df762';

    public function send($to_email, $to_name, $subject, $content) {
        $mj = new Client($this->api_key, $this->api_key_secret, true, ['version' => 'v3.1']);
        $body = [
            'Messages' => [
                [
                    'From' => [
                        'Email' => "rak.herymampionona@gmail.com",
                        'Name' => "Ma Boutique"
                    ],
                    'To' => [
                        [
                            'Email' => $to_email,
                            'Name' => $to_name
                        ]
                    ],
                    'TemplateID' => 4877555,
                    'TemplateLanguage' => true,
                    'Subject' => $subject,
                    'Variables' => [
                        'content' => $content,
                    ]
                ]
            ]
        ];

        $response = $mj->post(Resources::$Email, ['body' => $body]);
        $response->success();
    }

}