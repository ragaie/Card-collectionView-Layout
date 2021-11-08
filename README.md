# CollectionViewLayout

An easy-to-use Collection View Layout for card-like animation 🎉

Idea is show most important part that enable you to modify animation based your needs.

<p align="center">
	<img src="https://github.com/ragaie/Card-collectionView-Layout/blob/main/showCase.gif" width="250">
</p>

## Requirements

*CardCollectionViewLayout* is written in **Swift 4.2**.


## Usage

### Basic Usage

The two main steps are needed for the configuration of *CarLensCollectionViewLayout*:

#### Step 1
Assign `CardCollectionViewLayout` to yours collection view layout:
```swift
    collectionViewitems.collectionViewLayout = CarLensCollectionViewLayout()
```


#### Step 2
 Create `CartCollectionViewCell` Subsclass Of `CardCollectionViewCell` 
 and call `configure(cardView: UIView)` 
 
 during the cell’s initialization:
 
#### Cell

class CartCollectionViewCell: CarLensCollectionViewCell {

/*
    Here you will be your items that you want animate them, based your business
    At this demo we scale all items card from cell.
*/

    @IBOutlet weak var cardViewitem: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        /*
        here you can change this configuration to take all item that you want to animate them.
        In this demo we passing container that contains all items.
        */
        
        configure(cardView: cardViewitem)
    }
}
```

Secand things that you should modify it class `CardCollectionViewCell`

```
    private func animateViews(toProgress progress: Double) {
        let scale = ((0.5 + (CGFloat(progress))) > 1) ? 1 : (0.5 + CGFloat(progress))
        //animation happen we scaling containerView based on progress
        cardView.transform = .init(scaleX: 1, y:  scale)
    }

```

### Customization

#### Layout
You can also initialize `CardCollectionViewLayout` with a `CardCollectionViewLayoutOptions` object by passing any of the parameters available. Others will be configured automatically.

**Parameters:**

`minimumSpacing` - A minimum spacing between cells.

`decelerationRate` - A deceleration for a scroll view.

`shouldShowScrollIndicator` - A value indicating whether collection view should have a scroll indicator.

`itemSize` - The size to use for cells.

Example:

```swift
let options = CardCollectionViewLayoutOptions(minimumSpacing: 40)
CartCollectionViewCell.collectionViewLayout = CardCollectionViewLayout(options: options)
```





## Installation

## take files inside External support files  copy to your project

## About

The base source code created ❤️ by [Netguru](https://netguru.co) and maintained by [Anna-Mariia Shkarlinska](https://github.com/anyashka).
This demo and modification create by [Ragaie](https://github.com/ragaie).

### License


