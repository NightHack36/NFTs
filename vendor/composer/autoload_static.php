<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInitc2c68de1ec3ce4efcbb0de68cae4776c
{
    public static $prefixLengthsPsr4 = array (
        'U' => 
        array (
            'User\\Nfts\\' => 10,
        ),
        'S' => 
        array (
            'Src\\Repository\\' => 15,
            'Src\\Middlewares\\' => 16,
            'Src\\Helpers\\' => 12,
            'Src\\Exceptions\\' => 15,
        ),
        'A' => 
        array (
            'App\\Services\\' => 13,
            'App\\Route\\' => 10,
            'App\\Models\\' => 11,
            'App\\Controllers\\' => 16,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'User\\Nfts\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src',
        ),
        'Src\\Repository\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src/Repository',
        ),
        'Src\\Middlewares\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src/Middlewares',
        ),
        'Src\\Helpers\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src/Helpers',
        ),
        'Src\\Exceptions\\' => 
        array (
            0 => __DIR__ . '/../..' . '/src/Exceptions',
        ),
        'App\\Services\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app/Services',
        ),
        'App\\Route\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app/Route',
        ),
        'App\\Models\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app/Models',
        ),
        'App\\Controllers\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app/Controllers',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInitc2c68de1ec3ce4efcbb0de68cae4776c::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInitc2c68de1ec3ce4efcbb0de68cae4776c::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInitc2c68de1ec3ce4efcbb0de68cae4776c::$classMap;

        }, null, ClassLoader::class);
    }
}
