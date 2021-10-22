<p align="center">
<img src="https://user-images.githubusercontent.com/52633729/135446856-ed1de284-c21a-4932-bd70-b4eae149c49c.png">
</p>

<h1 align="center"> Fludget </h1>

<p align="center"> 
Browse through a variety of widgets used in flutter and learn how to use them
</p>

<p align = "center">
  <a href="https://acmvit.in/" target="_blank">
    <img alt="made-by-acm" src="https://img.shields.io/badge/MADE%20BY-ACM%20VIT-blue?style=for-the-badge" />
  </a>
  <img alt="license" src="https://img.shields.io/badge/License-MIT-green.svg?style=for-the-badge" />
  <img alt="Awesome Flutter" src="https://img.shields.io/badge/Awesome-Flutter-22a6b3.svg?style=for-the-badge" />
</p>

<p align="center">Project Status</p>

<p align = "center">
  <img alt="stars" src="https://img.shields.io/github/stars/ACM-VIT/fludget?color=eb4d4b&style=for-the-badge" />
  <img alt="forks" src="https://img.shields.io/github/forks/ACM-VIT/fludget?color=7ed6df&style=for-the-badge" />
  <img alt="issuses" src="https://img.shields.io/github/issues/ACM-VIT/fludget?color=f9ca24&style=for-the-badge" />
  <img alt="prs" src="https://img.shields.io/github/issues-pr-closed/ACM-VIT/fludget?color=686de0&style=for-the-badge" />
</p>

---

<p>
This application is developed to learn Flutter using Flutter. Different widgets used in Flutter can be viewed in this app along with their implementation, description and code. If you like our work, ⭐   the repository to show support.
  
  

</p>

# How to contribute to this project

- Make sure to read the [contributing guidelines](CONTRIBUTING.md) before contributing.
- `Fork` this repository.
- `Clone` your fork on local machine.
- Switch to the `master` branch.
- Make a new `branch`, preferably with the feature name.
- Checkout to the new branch with `git checkout <new_branch_name>`
- Do the desired changes and `commit` them with `git commit -m '<a nice commit message here>'`.
- `Push` the change to your fork on GitHub with `git push origin <your_branch_name>`
- Make a `Pull Request` to the master branch in the original repository, i.e. this one.

Note: Make sure you are always up to date with sync and pull upstream. Sync and pull before you start and before you push your work.

### How to contribute to the Widget Catalog

1. Create a new dart file named `*widget*.dart` for the widget being added under `lib/routes/`
2. Create a class named **_Widget_**_Implementation_ and implement the widget
3. Add description of the widget using **_Widget_**_Description_ class in the `*widget*.dart` file
4. Add the code written for the widget in String format using **_Widget_**_Code_ class in the same file
5. Add a new ListTile using the model `WidgetModel` in `lib/widgetList.dart` for the widget
6. In the `WidgetModel` 
    - Add an argument `name` and pass the name of the Widget
    - Add an argument `implementaion` and add `*Widget*Implementation()` as the parameter 
    - Add an argument `description` and add `*Widget*Description()` as the parameter
    - Add an argument `codeString` and add `*Widget*Code()` as the parameter
    - Add an argument `link` and include link to the official documentation of the widget as the parameter
    - Add an argument `category` and include category of the widget as the parameter
   
# Contributors

<p align = "left">
  <img alt="contributors" src="https://badges.pufler.dev/contributors/ACM-VIT/fludget?size=60&padding=10&bots=False" />
</p>

# Authors

- [Aryan Khubchandani](https://github.com/AryanKhubchandani)