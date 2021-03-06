<?php
/**
 * @file
 * Theme and preprocess functions for menus
 */

/**
 * Implements theme_menu_tree().
 */
function radix_menu_tree(&$variables) {
  return '<ul class="menu nav">' . $variables['tree'] . '</ul>';
}

/**
 * Implements theme_menu_link().
 */
function radix_menu_link(array $variables) {
  $element = $variables['element'];
  $sub_menu = '';
  
  if ($element['#below']) {
    // Wrap in dropdown-menu
    unset($element['#below']['#theme_wrappers']);
    $sub_menu = '<ul class="dropdown-menu">' . drupal_render($element['#below']) . '</ul>';
    $element['#localized_options']['attributes']['class'][] = 'dropdown-toggle';
    $element['#localized_options']['attributes']['data-toggle'] = 'dropdown';

    // Check if element is nested
    if ((!empty($element['#original_link']['depth'])) && ($element['#original_link']['depth'] > 1)) {
      $element['#attributes']['class'][] = 'dropdown-submenu';
    }
    else {
      $element['#attributes']['class'][] = 'dropdown';
      $element['#localized_options']['html'] = TRUE;
      $element['#title'] .= '<span class="caret"></span>';
    }

    $element['#localized_options']['attributes']['data-target'] = '#';
  }
  
  $output = l($element['#title'], $element['#href'], $element['#localized_options']);
  return '<li' . drupal_attributes($element['#attributes']) . '>' . $output . $sub_menu . "</li>\n";
}

/**
 * Implements theme_link().
 */
function radix_link($variables) {
  $icons = '';
  if (isset($variables['options']['attributes']['class']) && is_array($variables['options']['attributes']['class'])) {
    $css_classes = $variables['options']['attributes']['class'];
    if ($icon_classes = preg_grep('/^icon\-.*/', $css_classes)) {
      // render an icon for each class
      foreach ($icon_classes as $icon_class) {
        $icons .= '<i class="' . $icon_class . '"></i>';
      }
      // unset icon classes for attributes to prevent double rendering
      $variables['options']['attributes']['class'] = array_diff($css_classes, $icon_classes);
    }
  }
  return '<a href="' . check_plain(url($variables['path'], $variables['options'])) . '"' . drupal_attributes($variables['options']['attributes']) . '>' . $icons . '<span>' . ($variables['options']['html'] ? $variables['text'] : check_plain($variables['text'])) . '</span>' .  '</a>';
}
