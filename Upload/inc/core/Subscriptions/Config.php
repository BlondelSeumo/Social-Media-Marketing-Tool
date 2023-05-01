<?php
return [
    'id' => 'memberships',
    'folder' => 'core',
    'name' => 'Memberships',
    'author' => 'Stackcode',
    'author_uri' => 'https://stackposts.com',
    'desc' => 'Customize system interface',
    'icon' => 'fad fa-id-card-alt',
    'color' => '#e90a7b',
    'role' => 1,
    'menu' => [
        'tab' => 5,
        'type' => 'top',
        'position' => 1000,
        'name' => 'Memberships',
        'sub_menu' => [
            'position' => 1500,
            'id' => 'subscriptions',
            'name' => 'Subscriptions',
            'icon' => 'fad fa-user-tie',
            'color' => '#F76B1C'
        ]
    ]
]; 