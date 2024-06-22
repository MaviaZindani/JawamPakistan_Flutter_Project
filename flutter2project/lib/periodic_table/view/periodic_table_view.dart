import 'package:flutter/material.dart';
import 'package:flutter2project/main_custom_widget.dart';
import 'package:flutter2project/periodic_table/utils/custom_widget.dart';

import '../../home_screen.dart';

class PeriodicTableView extends StatelessWidget {
  const PeriodicTableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                    ChemicalBox(color: Color(0xff4EEE66), chemicalsambel: "H", chemicalename: "Hydrogen", chemicalenumber: "1.008", boxnumber: "1"),
                    EmptyPlace(height: 60, width: 60*16,padding: 48,),
                    ChemicalBox(color: Color(0xff8399FE), chemicalsambel: "He", chemicalename: "Helium", chemicalenumber: "4.003", boxnumber: "2")
          
                   ],),
                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ChemicalBox(color: Color(0xffE3C452), chemicalsambel: "Li", chemicalename: 'lithium', chemicalenumber: '6.94', boxnumber: '3'),
                    ChemicalBox(color: Color(0xffD9EA44), chemicalsambel: "Be", chemicalename: 'Beryllium', chemicalenumber: '9.012', boxnumber: '4'),
                    EmptyPlace(height: 60, width: 60*10,padding: 30,),
                    ChemicalBox(color: Color(0xff37F2B9), chemicalsambel: "B", chemicalename: "Boron", chemicalenumber: '10.81', boxnumber: '5'),
                    ChemicalBox(color: Color(0xff54EC66), chemicalsambel: "C", chemicalename: "Carbon", chemicalenumber: '12.011', boxnumber: '6'),
                    ChemicalBox(color: Color(0xff54EC66), chemicalsambel: "N", chemicalename: "Nitrogen", chemicalenumber: '14.007', boxnumber: '7'),
                    ChemicalBox(color: Color(0xff54EC66), chemicalsambel: "O", chemicalename: "Oxygen", chemicalenumber: '15.999', boxnumber: '8'),
                    ChemicalBox(color: Color(0xff54EC66), chemicalsambel: "F", chemicalename: "Fluorine", chemicalenumber: '18.998', boxnumber: '9'),
                    ChemicalBox(color: Color(0xff7B9DF9), chemicalsambel: "Ne", chemicalename: "Neon", chemicalenumber: '20.18', boxnumber: '10'),
                   ],),
                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ChemicalBox(color: Color(0xffE3C452), chemicalsambel: "Na", chemicalename: 'Sodium', chemicalenumber: '22.99', boxnumber: '11'),
                    ChemicalBox(color: Color(0xffD9EA44), chemicalsambel: "Mg", chemicalename: 'Magnesium', chemicalenumber: '24.305', boxnumber: '12'),
                    EmptyPlace(height: 60, width: 60*10 , padding: 30,),
                    ChemicalBox(color: Color(0xff54DCF2), chemicalsambel: "Al", chemicalename: "Aluminium", chemicalenumber: '26.982', boxnumber: '13'),
                    ChemicalBox(color: Color(0xff37F2B9), chemicalsambel: "Si", chemicalename: "Silicon", chemicalenumber: '28.085', boxnumber: '14'),
                    ChemicalBox(color: Color(0xff54EC66), chemicalsambel: "P", chemicalename: "Phosphorus", chemicalenumber: '30.974', boxnumber: '15'),
                    ChemicalBox(color: Color(0xff54EC66), chemicalsambel: "S", chemicalename: "Sulfur", chemicalenumber: '32.06', boxnumber: '16'),
                    ChemicalBox(color: Color(0xff54EC66), chemicalsambel: "Cl", chemicalename: "Colorine", chemicalenumber: '35.45', boxnumber: '17'),
                    ChemicalBox(color: Color(0xff7B9DF9), chemicalsambel: "Ar", chemicalename: "Argon", chemicalenumber: '39.948', boxnumber: '18'),
                   ],),
                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ChemicalBox(color: Color(0xffE3C452), chemicalsambel: "K", chemicalename: 'Potassium', chemicalenumber: '39.098', boxnumber: '19'),
                    ChemicalBox(color: Color(0xffD9EA44), chemicalsambel: "Ca", chemicalename: 'Calaium', chemicalenumber: '40.078', boxnumber: '20'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Sc", chemicalename: 'Scabdim', chemicalenumber: '44.956', boxnumber: '21'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Ti", chemicalename: 'Titanium', chemicalenumber: '47.867', boxnumber: '22'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "V", chemicalename: 'Vanadium', chemicalenumber: '50.942', boxnumber: '23'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Cr", chemicalename: 'Chromium', chemicalenumber: '51.996', boxnumber: '24'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Mn", chemicalename: 'Manganese', chemicalenumber: '54.938', boxnumber: '25'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Fe", chemicalename: 'Iron', chemicalenumber: '55.845', boxnumber: '26'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Co", chemicalename: 'Cobalt', chemicalenumber: '58.933', boxnumber: '27'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Ni", chemicalename: 'Nickel', chemicalenumber: '58.693', boxnumber: '28'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Cu", chemicalename: 'Copper', chemicalenumber: '63.546', boxnumber: '29'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Zn", chemicalename: 'Zinc', chemicalenumber: '65.382', boxnumber: '30'),
                    ChemicalBox(color: Color(0xff54DCF2), chemicalsambel: "Ga", chemicalename: "Gallium", chemicalenumber: '69.723', boxnumber: '31'),
                    ChemicalBox(color: Color(0xff37F2B9), chemicalsambel: "Ge", chemicalename: "Germanium", chemicalenumber: '72.631', boxnumber: '32'),
                    ChemicalBox(color: Color(0xff37F2B9), chemicalsambel: "As", chemicalename: "Arsenic", chemicalenumber: '74.922', boxnumber: '33'),
                    ChemicalBox(color: Color(0xff54EC66), chemicalsambel: "Se", chemicalename: "Selenium", chemicalenumber: '78.972', boxnumber: '34'),
                    ChemicalBox(color: Color(0xff54EC66), chemicalsambel: "Br", chemicalename: "Bromine", chemicalenumber: '79.904', boxnumber: '35'),
                    ChemicalBox(color: Color(0xff7B9DF9), chemicalsambel: "Kr", chemicalename: "Krypton", chemicalenumber: '83.798', boxnumber: '36'),
                   ],),
                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ChemicalBox(color: Color(0xffE3C452), chemicalsambel: "Rb", chemicalename: 'Rubidum', chemicalenumber: '85.868', boxnumber: '37'),
                    ChemicalBox(color: Color(0xffD9EA44), chemicalsambel: "Sr", chemicalename: 'Strontium', chemicalenumber: '87.621', boxnumber: '38'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Y", chemicalename: 'Yttrium', chemicalenumber: '88.906', boxnumber: '39'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Zr", chemicalename: 'Zirconium', chemicalenumber: '91.224', boxnumber: '40'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: 'Nb', chemicalename: 'Niobium', chemicalenumber: '92.906', boxnumber: '41'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Mo", chemicalename: 'Molybdenum', chemicalenumber: '95.951', boxnumber: '42'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Tc", chemicalename: 'Technetium', chemicalenumber: '98', boxnumber: '43'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Ru", chemicalename: 'Ruthenium', chemicalenumber: '101.072', boxnumber: '44'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Rh", chemicalename: 'Rhodium', chemicalenumber: '102.906', boxnumber: '45'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Pd", chemicalename: 'palladium', chemicalenumber: '106.421', boxnumber: '46'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Ag", chemicalename: 'Silver', chemicalenumber: '107.868', boxnumber: '47'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Cd", chemicalename: 'Cadmium', chemicalenumber: '112.414', boxnumber: '48'),
                    ChemicalBox(color: Color(0xff54DCF2), chemicalsambel: "In", chemicalename: "Indim", chemicalenumber: '114.818', boxnumber: '49'),
                    ChemicalBox(color: Color(0xff54DCF2), chemicalsambel: "Sn", chemicalename: "Tin", chemicalenumber: '118.711', boxnumber: '50'),
                    ChemicalBox(color: Color(0xff37F2B9), chemicalsambel: "Sb", chemicalename: "Antimony", chemicalenumber: '121.76', boxnumber: '51'),
                    ChemicalBox(color: Color(0xff37F2B9), chemicalsambel: "Te", chemicalename: "Tellurium", chemicalenumber: '127.603', boxnumber: '52'),
                    ChemicalBox(color: Color(0xff54EC66), chemicalsambel: "I", chemicalename: "Iodine", chemicalenumber: '126.904', boxnumber: '53'),
                    ChemicalBox(color: Color(0xff7B9DF9), chemicalsambel: "X", chemicalename: "Xenon", chemicalenumber: '131.294', boxnumber: '54'),
                   ],),          
                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ChemicalBox(color: Color(0xffE3C452), chemicalsambel: "Rb", chemicalename: 'Cesium', chemicalenumber: '132.905', boxnumber: '55'),
                    ChemicalBox(color: Color(0xffD9EA44), chemicalsambel: "Sr", chemicalename: 'Barium', chemicalenumber: '137.328', boxnumber: '56'),
                    EmptyPlace(height: 60, width: 60,padding: 3,),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Zr", chemicalename: 'Hafnium', chemicalenumber: '178.492', boxnumber: '72'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: 'Nb', chemicalename: 'Tantaium', chemicalenumber: '180.948', boxnumber: '73'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Mo", chemicalename: 'Tungsten', chemicalenumber: '183.841', boxnumber: '74'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Tc", chemicalename: 'Rhenium', chemicalenumber: '186.207', boxnumber: '75'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Ru", chemicalename: 'Osmium', chemicalenumber: '190.233', boxnumber: '76'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Rh", chemicalename: 'Iridium', chemicalenumber: '192.217', boxnumber: '77'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Pd", chemicalename: 'Platinum', chemicalenumber: '195.085', boxnumber: '78'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Ag", chemicalename: 'Gold', chemicalenumber: '196.967', boxnumber: '79'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Cd", chemicalename: 'Mercury', chemicalenumber: '200.592', boxnumber: '80'),
                    ChemicalBox(color: Color(0xff54DCF2), chemicalsambel: "In", chemicalename: "Thallium", chemicalenumber: '204.38', boxnumber: '81'),
                    ChemicalBox(color: Color(0xff54DCF2), chemicalsambel: "Sn", chemicalename: 'Lead', chemicalenumber: '207.21', boxnumber: '82'),
                    ChemicalBox(color: Color(0xff54DCF2), chemicalsambel: "Sb", chemicalename: "Bismuth", chemicalenumber: '208.98', boxnumber: '83'),
                    ChemicalBox(color: Color(0xff54DCF2), chemicalsambel: "Te", chemicalename: "Polonium", chemicalenumber: '209', boxnumber: '84'),
                    ChemicalBox(color: Color(0xff37F2B9), chemicalsambel: "I", chemicalename: "Astatine", chemicalenumber: '210', boxnumber: '85'),
                    ChemicalBox(color: Color(0xff7B9DF9), chemicalsambel: "X", chemicalename: "Radon", chemicalenumber: '222', boxnumber: '86'),
                   ],),
                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ChemicalBox(color: Color(0xffE3C452), chemicalsambel: "Fr", chemicalename: 'Francium', chemicalenumber: '223', boxnumber: '87'),
                    ChemicalBox(color: Color(0xffD9EA44), chemicalsambel: "Ra", chemicalename: 'Radium', chemicalenumber: '226', boxnumber: '88'),
                    EmptyPlace(height: 60, width: 60,padding: 3,),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Rf", chemicalename: 'Rutherfordium', chemicalenumber: '267', boxnumber: '104'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: 'Db', chemicalename: 'Dubnium', chemicalenumber: '268', boxnumber: '105'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Sg", chemicalename: 'Seaborgium', chemicalenumber: '269', boxnumber: '106'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Bh", chemicalename: 'Bohrium', chemicalenumber: '270', boxnumber: '107'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Hs", chemicalename: 'Hassium', chemicalenumber: '269', boxnumber: '108'),
                    ChemicalBox(color: Color(0xffCBCCCE), chemicalsambel: "Mt", chemicalename: 'Meitnerium', chemicalenumber: '278', boxnumber: '109'),
                    ChemicalBox(color: Color(0xffCBCCCE), chemicalsambel: "Ds", chemicalename: 'Darmstadtium', chemicalenumber: '281', boxnumber: '110'),
                    ChemicalBox(color: Color(0xffCBCCCE), chemicalsambel: "Rg", chemicalename: 'Roentgenium', chemicalenumber: '282', boxnumber: '111'),
                    ChemicalBox(color: Color(0xffFF8270), chemicalsambel: "Cn", chemicalename: 'Copernicium', chemicalenumber: '285', boxnumber: '112'),
                    ChemicalBox(color: Color(0xffCBCCCE), chemicalsambel: "Nh", chemicalename: "Nihonium", chemicalenumber: '286', boxnumber: '113'),
                    ChemicalBox(color: Color(0xff54DCF2), chemicalsambel: "Fl", chemicalename: 'Flerovium', chemicalenumber: '289', boxnumber: '114'),
                    ChemicalBox(color: Color(0xffCBCCCE), chemicalsambel: "Mc", chemicalename: "Moscovium", chemicalenumber: '289', boxnumber: '115'),
                    ChemicalBox(color: Color(0xffCBCCCE), chemicalsambel: "Lv", chemicalename: "Livermorium", chemicalenumber: '293', boxnumber: '116'),
                    ChemicalBox(color: Color(0xffCBCCCE), chemicalsambel: "Ts", chemicalename: "Tennessine", chemicalenumber: '294', boxnumber: '117'),
                    ChemicalBox(color: Color(0xffCBCCCE), chemicalsambel: "Og", chemicalename: "Oganesson", chemicalenumber: '294', boxnumber: '118'),
                   ],),
                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    ChemicalBox(color: Color(0xffCBCCCE), chemicalsambel: "Ue", chemicalename: "Ununennium", chemicalenumber: '315', boxnumber: '119'),
                    EmptyPlace(height: 60, width: 60*18,padding: 21,)
                    
                   ],),
                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    EmptyPlace(height: 60, width: 60*2, padding: 6,),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "La", chemicalename: 'Lanthanum', chemicalenumber: '138.905', boxnumber: '57'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: 'Ce', chemicalename: 'Cerium', chemicalenumber: '140.116', boxnumber: '58'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Pr", chemicalename: 'Praseodymium', chemicalenumber: '140.908', boxnumber: '59'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Nd", chemicalename: 'Neodymium', chemicalenumber: '144.242', boxnumber: '60'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Pm", chemicalename: 'Prometium', chemicalenumber: '145', boxnumber: '61'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Sm", chemicalename: 'Samarium', chemicalenumber: '150.362', boxnumber: '62'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Eu", chemicalename: 'Europium', chemicalenumber: '151.964', boxnumber: '63'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Gd", chemicalename: 'Gadolinium', chemicalenumber: '157.253', boxnumber: '64'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Tb", chemicalename: 'Terbium', chemicalenumber: '158.925', boxnumber: '65'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Dy", chemicalename: "Dysprosium", chemicalenumber: '162.5', boxnumber: '66'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Ho", chemicalename: 'Holmium', chemicalenumber: '164.93', boxnumber: '67'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Er", chemicalename: "Erbium", chemicalenumber: '167.259', boxnumber: '68'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Tm", chemicalename: "Thulium", chemicalenumber: '168.934', boxnumber: '69'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Yb", chemicalename: "Ytterbium", chemicalenumber: '173.045', boxnumber: '70'),
                    ChemicalBox(color: Color(0xffDE7DA3), chemicalsambel: "Lu", chemicalename: "Lutetium", chemicalenumber: '174.967', boxnumber: '71'),
                    EmptyPlace(height: 60, width: 60,padding: 6,),
                   ],),
                   Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    EmptyPlace(height: 60, width: 60*2,padding: 6,),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "La", chemicalename: 'Lanthanum', chemicalenumber: '138.905', boxnumber: '57'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: 'Ce', chemicalename: 'Cerium', chemicalenumber: '140.116', boxnumber: '58'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Pr", chemicalename: 'Praseodymium', chemicalenumber: '140.908', boxnumber: '59'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Nd", chemicalename: 'Neodymium', chemicalenumber: '144.242', boxnumber: '60'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Pm", chemicalename: 'Prometium', chemicalenumber: '145', boxnumber: '61'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Sm", chemicalename: 'Samarium', chemicalenumber: '150.362', boxnumber: '62'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Eu", chemicalename: 'Europium', chemicalenumber: '151.964', boxnumber: '63'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Gd", chemicalename: 'Gadolinium', chemicalenumber: '157.253', boxnumber: '64'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Tb", chemicalename: 'Terbium', chemicalenumber: '158.925', boxnumber: '65'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Dy", chemicalename: "Dysprosium", chemicalenumber: '162.5', boxnumber: '66'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Ho", chemicalename: 'Holmium', chemicalenumber: '164.93', boxnumber: '67'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Er", chemicalename: "Erbium", chemicalenumber: '167.259', boxnumber: '68'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Tm", chemicalename: "Thulium", chemicalenumber: '168.934', boxnumber: '69'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Yb", chemicalename: "Ytterbium", chemicalenumber: '173.045', boxnumber: '70'),
                    ChemicalBox(color: Color(0xffC088C9), chemicalsambel: "Lu", chemicalename: "Lutetium", chemicalenumber: '174.967', boxnumber: '71'),
                    EmptyPlace(height: 60, width: 60,padding: 5,),
                   ],),
                   
                   const SizedBox(height: 100,),
                  MoveToNext(moveTo: const HomeScreen(), text: 'Goto Preiodic Table User interface')
              ]
            ),
          ),
        ),
      ),
    );
  }
}