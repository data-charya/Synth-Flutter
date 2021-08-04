

<div align="center">

  ![Logo](https://user-images.githubusercontent.com/62848565/128122647-f56c9c5a-54ef-4f6e-b6ad-65964d345251.png)
  
</div>
<div align="center">


![flutter](https://img.shields.io/badge/Flutter%20ver.-2.4.0-blue?style=for-the-badge&logo=flutter)
[![GitHub license](https://img.shields.io/badge/license-MIT-red.svg?style=for-the-badge)](https://github.com/data-charya/Elemental/blob/master/LICENSE)
[![Google Play](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white)](https://play.google.com/store/apps/details?id=io.shanwill.elemental)
[![Flutter action](https://github.com/data-charya/Synth-Flutter/actions/workflows/dart.yml/badge.svg)](https://github.com/data-charya/Synth-Flutter/actions/workflows/dart.yml)

</div>
<hr>

# Synth Neumorphism Components

My take on CRED's Synth Design System. I tried to recreate the components as close to the real thing as possible and will be adding more components down the line.

<br>

## Usage
Add the plugin to your pubspec.yaml using :
```dart
flutter pub add synth
```
Import the package and use the components, Its that simple !
```dart
SynthSoftbutton(
  text: 'Your Text',
  width: 100,
  height: 50,
  onPressed: () 
  {
    //write your function definition
  },
 )
```
## Buttons
### Softbutton


![1](https://user-images.githubusercontent.com/62848565/128127176-0f50a578-1ee7-47a4-b67d-4f72a2f14161.png)

```dart
SynthSoftbutton(
  text: 'Your Text',
  width: 100,
  height: 50,
  onPressed: () 
  {
    //write your function definition
  },
 )
```

<br>

### Drawable Button


![2](https://user-images.githubusercontent.com/62848565/128127187-51f5ced1-3ee0-4976-80d6-fd885e0b72bf.png)

```dart
SynthDrawablebutton(
  text: 'Your Text',
  width: 100,
  height: 50,
  onPressed: () 
  {
    //write your function definition
  },
 )
```
<br>

### Flat Button
![3](https://user-images.githubusercontent.com/62848565/128127202-784ff6fb-dcd4-4099-a81d-0d6f64542158.png)

```dart
SynthFlatbutton(
  text: 'Your Text',
  width: 100,
  height: 50,
  onPressed: () 
  {
    //write your function definition
  },
 )
```

<br>

### Flat Drawable Button
![4](https://user-images.githubusercontent.com/62848565/128127223-5227e45a-62f7-4016-8e99-69aa1363a08b.png)

```dart
SynthFlatDrawablebutton(
  text: 'Your Text',
  width: 100,
  height: 50,
  onPressed: () 
  {
    //write your function definition
  },
  icon: Icon(
    Icons.add,
    color: primarySynthWhite100,
    ),
   )
 )
```

<br>

### Img Button
![5](https://user-images.githubusercontent.com/62848565/128127242-ec0c5bb6-3ae1-4531-b951-88ea34def291.png)

```dart
NeuImgbutton(
  radius: 80,
  onPressed: () 
  {
    //write your function definition
  },
  icon: Icon(
    Icons.arrow_back_ios_new_rounded,
  ),
 )
```

<br>

### Elevated View
![6](https://user-images.githubusercontent.com/62848565/128127250-52dbe753-cffb-4de2-af7a-a33af6ae5e55.png)

```dart
ElevatedView(
   width: 300,
   height: 100,
   child: Center(
   child: Text(
   'synth',
   style: TextStyle(
   fontSize: 25,
   fontFamily: 'Gilroy',
   fontWeight: FontWeight.w900,
   color: primarySynthCopper400,
   ),
  ),
 ),
)
```

<br>

### Circular Checkbox
![7](https://user-images.githubusercontent.com/62848565/128127263-e559d648-8689-4079-b908-36e359f10701.png)

```dart
SynthCircularcheckbox(
  width: 30,
  height: 30,
  onPressed: () 
  {
    //write your function definition
  },
 )
```

<br>

### RoundedRect Checkbox
![8](https://user-images.githubusercontent.com/62848565/128127271-3784936b-edd3-4e3a-85f1-daa3e886e4e0.png)

```dart
 SynthRoundedRectcheckbox(
   width: 30,
   height: 30,
   onPressed: () 
   {
      //write your function definition here
   },
  )
```

<br>
