#package Makefile
use 5.006;
use ExtUtils::MakeMaker;

BEGIN {

   # See lib/ExtUtils/MakeMaker.pm for Details of how to influence
   # the Contents of the Makefile that is written.
   WriteMakefile(
      'NAME' => 'Application-BackupAndRestore',

      #'VERSION'   => 0.009,    # finds $VERSION
      'VERSION_FROM' => 'bin/BackupAndRestore',
      'PREREQ_PM'    => {
         Test::More => 0,
         Benchmark  => 0,

         #Test::Benchmark => 0,

         UNIVERSAL => 0,

         base     => 0,
         constant => 0,
         enum     => 0,
         integer  => 0,
         overload => 0,
         strict   => 0,
         warnings => 0,

         #Universal
         Exporter => 0,
         Carp     => 0,

         #App
         Gnome2::GConf       => 0,    # libgnome2-gconf-perl
         Unicode::MapUTF8    => 0,
         Unicode::UTF8simple => 0,
         Tie::DataDumper     => 0,

         Glib           => 0,
         Gtk2           => 0,
         Gtk2::GladeXML => 0,

         Cwd            => 0,
         File::Basename => 0,

         POSIX => 0,

         #Gtk2::Ex::FileLocator::RecycleButton => 0,

      },    # e.g., Module::Name => 1.1

      EXE_FILES => ["bin/BackupAndRestore", "bin/BackupAndRestore.glade"],
	   ABSTRACT => 'Backup and Restore your Files and Folders incrementally.',
      AUTHOR   => 'Holger Seelig <holger.seelig@yahoo.de>',

      #NO_META  => 1,
      #NORECURS => 0,
   );
}
__END__

#clean
cd '/home/holger/perl/cpan/X3D'
perl Makefile.PL | grep OK
sudo make clean | grep OK
sudo rm Makefile.old 2>&1 | grep OK
sudo rm MANIFEST 2>&1 | grep OK
sudo rm MANIFEST.bak 2>&1 | grep OK


#mk dist
perl Makefile.PL | grep OK
make manifest 2>&1 | grep OK
cat MANIFEST | cpanversion+ 0.0001 | grep OK
perl Makefile.PL | grep OK
make test | grep OK
make dist | grep OK
mv *.gz ../


#mk install
sudo cpan . | grep OK


#mk test
perl Makefile.PL | grep OK
make test

install Unicode::String
install Package::Alias
install Algorithm::Numerical::Shuffle
install Hash::NoRef
install Math::Quaternion
install Sub::Name
install Want
install enum
