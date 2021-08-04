

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
<hr>

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
<hr>

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
<hr>

```dart
SynthFlatbutton(
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
```

<br>

### Flat Drawable Button
<hr> 

```dart
SynthFlatDrawablebutton(
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

### Img Button
<hr>

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
<hr>

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
<hr>

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
<hr>

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
