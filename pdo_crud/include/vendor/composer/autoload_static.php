<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit9692672ba95564ffc62f18e428e1d771
{
    public static $prefixLengthsPsr4 = array (
        'A' => 
        array (
            'App\\' => 4,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'App\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit9692672ba95564ffc62f18e428e1d771::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit9692672ba95564ffc62f18e428e1d771::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit9692672ba95564ffc62f18e428e1d771::$classMap;

        }, null, ClassLoader::class);
    }
}
