<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Swagger UI Route
    |--------------------------------------------------------------------------
    |
    | Set this value to specify the route where the Swagger UI will be accessible.
    |
    */

    'routes' => [
        'api' => 'api/documentation', // Ruta para acceder a la documentación
    ],

    /*
    |--------------------------------------------------------------------------
    | API Informations
    |--------------------------------------------------------------------------
    |
    | The name and version tag for your API.
    |
    */

    'api' => [
        'name' => 'Mi API',
        'version' => '1.0',
    ],

    /*
    |--------------------------------------------------------------------------
    | Generate Always
    |--------------------------------------------------------------------------
    |
    | By default, swagger json files are generated when routes are cached.
    |
    */

    'generate_always' => env('L5_SWAGGER_GENERATE_ALWAYS', false),

    /*
    |--------------------------------------------------------------------------
    | Swagger UI Configuration
    |--------------------------------------------------------------------------
    |
    | The Swagger UI settings.
    |
    */

    'ui' => [
        'validatorUrl' => null,
    ],

    /*
    |--------------------------------------------------------------------------
    | Documents Merge Settings
    |--------------------------------------------------------------------------
    |
    | Merge generated documentations into one.
    |
    */

    'merge' => [
        'include' => [
            // Añade aquí las rutas de los controladores que deseas incluir en la documentación
            'paises',
            'departamentos',
            'ciudades',
            'sectores',
            'inmuebles',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Headers
    |--------------------------------------------------------------------------
    |
    | Add headers to the API requests.
    |
    */

    'headers' => [
        //
    ],

];