@placenames: #222;
@placenames-light: #222;
@land: #E8E0D8;
@sans_bold: "Open Sans Bold","Arial Unicode MS Regular";
.country {
  [place = 'country'][zoom >= 2][zoom < 6] {
    text-name: "[name]";
    text-size: 9;
    text-fill: @land * 0.2;
    text-face-name: @sans_bold;
    text-halo-radius: 1;
    text-wrap-width: 90;
    [zoom >= 4] {
      text-size: 10;
    }
  }
}

.state {
  [place = 'state'][zoom >= 4][zoom < 9] {
    text-name: "[ref]";
    text-size: 9;
    text-fill: #9d6c9d;
    text-face-name: @sans_bold;
    text-halo-radius: 1.5;
    text-wrap-width: 0;
    [zoom >= 5] {
      text-name: "[name]";
      text-wrap-width: 50;
    }
    [zoom >= 7] {
      text-size: 11;
      text-wrap-width: 70;
    }
  }
}

#placenames-capital {
  [zoom >= 5][zoom < 15] {
    text-name: "[name]";
    text-size: 10;
    text-fill: @placenames;
    text-face-name: @sans_bold;
    text-halo-radius: 1.5;
    text-wrap-width: 25;
    text-min-distance: 10;
    [zoom >= 6] {
      text-size: 12;
      text-wrap-width: 70;
    }
    [zoom >= 11] {
      text-size: 15;
      text-wrap-width: 90;
    }
  }
}

#placenames-medium::city {
  [place = 'city'] {
    [zoom >= 6][zoom < 15] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @sans_bold;
      text-halo-radius: 1.5;
      text-wrap-width: 25;
      text-min-distance: 10;
      [zoom >= 9] {
        text-size: 12;
      text-wrap-width: 70;
      }
      [zoom >= 11] {
        text-size: 15;
      text-wrap-width: 90;
      }
    }
  }
}

#placenames-medium::town {
  [place = 'town'] {
    [zoom >= 9] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @sans_bold;
      text-halo-radius: 1.5;
      text-wrap-width: 50;
      text-min-distance: 10;
    }
    [zoom >= 11] {
      text-size: 11;
      text-wrap-width: 70;
    }
    [zoom >= 14] {
      text-size: 15;
      text-wrap-width: 90;
      text-fill: @placenames-light;
    }
  }
}

#placenames-small::suburb {
  [place = 'suburb'][zoom >= 12] {
    text-name: "[name]";
    text-size: 11;
    text-fill: @placenames;
    text-face-name: @sans_bold;
    text-halo-radius: 1.5;
    text-wrap-width: 70;
    text-min-distance: 10;
    [zoom >= 14] {
      text-size: 14;
      text-wrap-width: 90;
      text-fill: @placenames-light;
    }
  }
}

#placenames-small::village {
  [place = 'village'] {
    [zoom >=12] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @placenames;
      text-face-name: @sans_bold;
      text-halo-radius: 1.5;
      text-wrap-width: 50;
      text-min-distance: 10;
      [zoom >= 15] {
        text-size: 13;
        text-fill: @placenames-light;
      }
    }
  }
}

#placenames-small::hamlet {
  [place = 'hamlet'],
  [place = 'locality'],
  [place = 'neighbourhood'],
  [place = 'isolated_dwelling'],
  [place = 'farm'] {
    [zoom >= 14] {
      text-name: "[name]";
      text-size: 9;
      text-fill: @placenames;
      text-face-name: @sans_bold;
      text-halo-radius: 1.5;
      text-wrap-width: 50;
      text-min-distance: 10;
    }
    [zoom >= 16] {
      text-size: 12;
      text-wrap-width: 70;
      text-fill: @placenames-light;
    }
  }
}
