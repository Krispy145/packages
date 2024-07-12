# Change Log

All notable changes to this project will be documented in this file.
See [Conventional Commits](https://conventionalcommits.org) for commit guidelines.

## 2024-06-03

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`admob` - `v0.0.2`](#admob---v002)
- [`authentication` - `v0.0.2`](#authentication---v002)
- [`contacts` - `v0.0.2`](#contacts---v002)
- [`deeplinks` - `v0.0.2`](#deeplinks---v002)
- [`fonts` - `v0.0.2`](#fonts---v002)
- [`forms` - `v0.0.2`](#forms---v002)
- [`maps` - `v0.0.2`](#maps---v002)
- [`navigation` - `v0.0.2`](#navigation---v002)
- [`notifications` - `v0.0.2`](#notifications---v002)
- [`socials` - `v0.0.2`](#socials---v002)
- [`theme` - `v0.0.2`](#theme---v002)
- [`utilities` - `v0.0.2`](#utilities---v002)
- [`widgets` - `v0.0.2`](#widgets---v002)
- [`youtube` - `v0.0.2`](#youtube---v002)

---

#### `admob` - `v0.0.2`

- **REFACTOR**(admob): Class rename.
- **FIX**: package imports fixed.
- **FEAT**(forms): added forms package to monorepo (initial commit).
- **FEAT**(loggers): changed names to {package name}Loggers.
- **FEAT**(loggers): updated packages to have local loggers.

#### `authentication` - `v0.0.2`

- **FIX**: auth user not showing displayName.
- **FEAT**: reviews setup (ongoing).
- **FEAT**: permissions and reviews in auth package (ongoing).
- **FEAT**: api data source improved with pagination and youtube data sources fixed.
- **FEAT**(form): changes to data sources.
- **FEAT**(forms): refactor with updated logic.
- **FEAT**(forms): new form suggestion to be used with the ecosystem cli builder.
- **FEAT**(auth): refactor to extend UserModel.
- **FEAT**(auth): added auth and connect to instagram logic.
- **FEAT**: dummy data source set up and polishing.
- **FEAT**(loggers): changed names to {package name}Loggers.
- **FEAT**(loggers): updated packages to have local loggers.

#### `contacts` - `v0.0.2`

- **FEAT**: youtube models added and logic cleaned up and contacts improvements.
- **FEAT**: contacts data source implemented.

#### `deeplinks` - `v0.0.2`

- **FEAT**: dummy data source set up and polishing.
- **FEAT**(loggers): changed names to {package name}Loggers.
- **FEAT**(loggers): updated packages to have local loggers.

#### `fonts` - `v0.0.2`

- **REFACTOR**(theme): changes to make components theme and base theme optional, with improved error handling.
- **REFACTOR**(fonts): fonts reorganised to better fit architecture.
- **REFACTOR**(fonts): code cleanup.
- **REFACTOR**(fonts): Fonts package reorganised with proper architecture!
- **FIX**(fonts): fix for fonts loaded from assets.
- **FEAT**: adding flag added into form store onValueChanged.
- **FEAT**: youtube models added and logic cleaned up and contacts improvements.
- **FEAT**: initial commit.
- **FEAT**(forms): refactor with updated logic.
- **FEAT**(lists): created paginated list feature with use of store and loadStateBuilder widget.
- **FEAT**: fonts updated to use Unbounded rather than Phonk and error handling added when font not found.
- **FEAT**: dummy data source set up and polishing.
- **FEAT**(forms): added forms package to monorepo (initial commit).
- **FEAT**(font): added DOFont enum to font dropdown.
- **FEAT**(fonts): new fonts system integrated into theme.
- **FEAT**(fonts): added proxima nova alt font.
- **FEAT**(fonts): dynamic font loader added and partially organised.
- **FEAT**(fonts): fonts initial implementation.

#### `forms` - `v0.0.2`

- **FIX**: dev them changer usage.
- **FIX**: shop form missing details on update fixed.
- **FIX**: auth user not showing displayName.
- **FIX**(forms): removed fields from theme package.
- **FIX**: Fixing updating issues with theme changer.
- **FIX**(firestore): upserting shop fix for adding or updating shop details.
- **FIX**(double): removed increment/decrement buttons in double field.
- **FIX**: package imports fixed.
- **FIX**(firestore): adding shop changes to database.
- **FIX**: added icons back to topTips preview for dashboard.
- **FEAT**: basic date form field added.
- **FEAT**: permissions and reviews in auth package (ongoing).
- **FEAT**: dropdown field.
- **FEAT**(lists): created paginated list feature with use of store and loadStateBuilder widget.
- **FEAT**: added basic app icon.
- **FEAT**: added add topTips onto details when no top tips are present.
- **FEAT**(auth): added auth and connect to instagram logic.
- **FEAT**(addTopTip): added add top tip to list view.
- **FEAT**: fonts updated to use Unbounded rather than Phonk and error handling added when font not found.
- **FEAT**: date and time field and more events work.
- **FEAT**(maps): added google place full details setup and changed map to maps in packages.
- **FEAT**(forms): added forms package to monorepo (initial commit).
- **FEAT**(auth): refactor to extend UserModel.
- **FEAT**(forms): refactor with updated logic.
- **FEAT**(form): changes to data sources.
- **FEAT**: adding flag added into form store onValueChanged.
- **FEAT**: api data source improved with pagination and youtube data sources fixed.
- **FEAT**(shopDetails): tweaked firebase additing.
- **FEAT**(shops): Added shop details to brain and adjusted UI with more shop information and map setup.
- **FEAT**(map): refactored search map presentation layer to extend map presentation layer.
- **FEAT**(mapSearch): updated state management with lat/lng double field and map animation changes.
- **FEAT**(forms): started model form for form field builders.
- **FEAT**(forms): new form suggestion to be used with the ecosystem cli builder.

#### `maps` - `v0.0.2`

- **FIX**: added icons back to topTips preview for dashboard.
- **FEAT**: permissions and reviews in auth package (ongoing).
- **FEAT**(form): changes to data sources.
- **FEAT**(forms): refactor with updated logic.
- **FEAT**: Stage 1 of data source queries implemented.
- **FEAT**: NEW LOGO DESIGN ADDED 🤩.
- **FEAT**: unselect marker on map move.
- **FEAT**(lists): created paginated list feature with use of store and loadStateBuilder widget.
- **FEAT**(addTopTip): added add top tip to list view.
- **FEAT**(pagination): Added paginated firestore and dummy data sources.
- **FEAT**(maps): added google place full details setup and changed map to maps in packages.

#### `navigation` - `v0.0.2`

- **FIX**: package imports fixed.
- **FEAT**(loggers): changed names to {package name}Loggers.
- **FEAT**(loggers): updated packages to have local loggers.

#### `notifications` - `v0.0.2`

- **FEAT**: permissions and reviews in auth package (ongoing).
- **FEAT**(form): changes to data sources.
- **FEAT**(auth): refactor to extend UserModel.
- **FEAT**: Stage 1 of data source queries implemented.
- **FEAT**(googlePlaces): Added google places api (with web-security-disabled).
- **FEAT**: dummy data source set up and polishing.
- **FEAT**(loggers): changed names to {package name}Loggers.
- **FEAT**(loggers): updated packages to have local loggers.

#### `socials` - `v0.0.2`

- **FEAT**: permissions and reviews in auth package (ongoing).
- **FEAT**: api data source improved with pagination and youtube data sources fixed.
- **FEAT**(form): changes to data sources.
- **FEAT**(forms): refactor with updated logic.
- **FEAT**: Stage 1 of data source queries implemented.
- **FEAT**: date and time field and more events work.
- **FEAT**(auth): added auth and connect to instagram logic.
- **FEAT**(socials): Added reAuthenticate feature.
- **FEAT**(socials): added socials package and instagram setup (basic [needs review]).

#### `theme` - `v0.0.2`

- **REFACTOR**(theme): Edge Insets field converted to mobx.
- **REFACTOR**(theme): changes to make components theme and base theme optional, with improved error handling.
- **REFACTOR**(fonts): fonts reorganised to better fit architecture.
- **REFACTOR**(theme): converters replaced with models.
- **REFACTOR**(theme): code clean up of Color Form Field.
- **REFACTOR**(theme): fields refactored to use mobx rather than stateful widgets.
- **FIX**: dev them changer usage.
- **FIX**: Fixing updating issues with theme changer.
- **FIX**(forms): removed fields from theme package.
- **FIX**(double): removed increment/decrement buttons in double field.
- **FIX**: Theme changer type comparison.
- **FIX**: auth user not showing displayName.
- **FIX**: changed DigitalOasis names to DO.
- **FIX**(theme): loading assets theme (ongoing).
- **FIX**(firebase): fixed firestore instance initializer in data source.
- **FEAT**: build context extension added in theme.
- **FEAT**: permissions and reviews in auth package (ongoing).
- **FEAT**: dummy data source set up and polishing.
- **FEAT**(forms): added forms package to monorepo (initial commit).
- **FEAT**(mapEditor): added list handling for map value (basic setup).
- **FEAT**(theme): added firestore data source to them package.
- **FEAT**(dataSource): added assets dataSource.
- **FEAT**(theme): theme fixes for hex mapping and polishing theme fetching.
- **FEAT**(googlePlaces): Added google places api (with web-security-disabled).
- **FEAT**(theme): added widget headers to theme changer to show changes in component themes.
- **FEAT**(theme): TextStyle changer setup for base theme updates.
- **FEAT**(theme): Added changeTextStyleTypes on changed for font dropdown.
- **FEAT**(font): added DOFont enum to font dropdown.
- **FEAT**(forms): refactor with updated logic.
- **FEAT**(fonts): new fonts system integrated into theme.
- **FEAT**(form): changes to data sources.
- **FEAT**(form): Enum form field added.
- **FEAT**(loggers): updated packages to have local loggers.
- **FEAT**(theme): beginning setup for fontFamilyName data type.
- **FEAT**(theme): text style form fields in progress.
- **FEAT**(maps): added google place full details setup and changed map to maps in packages.
- **FEAT**: Stage 1 of data source queries implemented.
- **FEAT**(theme): Color Form Field added and working.
- **FEAT**(theme): BaseFormField integrated.
- **FEAT**(theme): duration field added.
- **FEAT**(theme): duration model added.
- **FEAT**(lists): created paginated list feature with use of store and loadStateBuilder widget.
- **FEAT**(theme): Bool field converted to .
- **FEAT**: fonts updated to use Unbounded rather than Phonk and error handling added when font not found.
- **FEAT**(theme): Border form fields added.
- **FEAT**(theme): Border form fields added.
- **FEAT**(theme): Border Radius form field added.
- **FEAT**(theme): Lots of data types added, still in progress.
- **FEAT**(loggers): changed names to {package name}Loggers.

#### `utilities` - `v0.0.2`

- **REFACTOR**(theme): changes to make components theme and base theme optional, with improved error handling.
- **FIX**(firebase): fixed firestore instance initializer in data source.
- **FIX**: youtube models switched to using camel case rather than snake case.
- **FIX**: Theme changer type comparison.
- **FIX**(firestore): upserting shop fix for adding or updating shop details.
- **FIX**: Fixing updating issues with theme changer.
- **FIX**: package imports fixed.
- **FIX**(theme): loading assets theme (ongoing).
- **FIX**(firestore): adding shop changes to database.
- **FIX**: auth user not showing displayName.
- **FEAT**(forms): refactor with updated logic.
- **FEAT**: fetchWithin logic tidied to use search query in shops.
- **FEAT**(auth): refactor to extend UserModel.
- **FEAT**: Stage 1 of data source queries implemented.
- **FEAT**: reviews setup (ongoing).
- **FEAT**(auth): added auth and connect to instagram logic.
- **FEAT**(socials): Added reAuthenticate feature.
- **FEAT**(socials): added socials package and instagram setup (basic [needs review]).
- **FEAT**: added userLocation prompt to android.
- **FEAT**: NEW LOGO DESIGN ADDED 🤩.
- **FEAT**(lists): created paginated list feature with use of store and loadStateBuilder widget.
- **FEAT**: go to shop details from map.
- **FEAT**: default loading builder centered in load state builder.
- **FEAT**: initial commit.
- **FEAT**(pagination): Added paginated firestore and dummy data sources.
- **FEAT**(maps): added google place full details setup and changed map to maps in packages.
- **FEAT**(form): changes to data sources.
- **FEAT**: api data source improved with pagination and youtube data sources fixed.
- **FEAT**(fonts): fonts initial implementation.
- **FEAT**: video view setup for youtube and paginated lists / grids can use slivers.
- **FEAT**(shops): Added shop details to brain and adjusted UI with more shop information and map setup.
- **FEAT**(googlePlaces): Added google places api (with web-security-disabled).
- **FEAT**: dummy data source set up and polishing.
- **FEAT**(forms): added forms package to monorepo (initial commit).
- **FEAT**: date and time field and more events work.
- **FEAT**(dataSource): added assets dataSource.
- **FEAT**(theme): theme fixes for hex mapping and polishing theme fetching.
- **FEAT**: permissions and reviews in auth package (ongoing).
- **FEAT**: hive data sources tweaks to use JSON rather than Map.
- **FEAT**(loggers): changed names to {package name}Loggers.
- **FEAT**(loggers): updated packages to have local loggers.
- **FEAT**: contacts data source implemented.

#### `widgets` - `v0.0.2`

- **FEAT**: permissions and reviews in auth package (ongoing).
- **FEAT**: initial commit.
- **FEAT**(widgets): added read more text.
- **FEAT**(widgets): sliver app bar delegate added.
- **FEAT**: Fading List View added.
- **FEAT**(theme): text style form fields in progress.

#### `youtube` - `v0.0.2`

- **FIX**: youtube models switched to using camel case rather than snake case.
- **FIX**: youtube package data source imports fixed.
- **FEAT**: missing properties added.
- **FEAT**: video view setup for youtube and paginated lists / grids can use slivers.
- **FEAT**: api data source improved with pagination and youtube data sources fixed.
- **FEAT**: youtube models added and logic cleaned up and contacts improvements.
- **FEAT**: contacts data source implemented.

## 2024-04-02

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`utilities` - `v0.0.1+2`](#utilities---v0012)
- [`admob` - `v0.0.1+2`](#admob---v0012)
- [`authentication` - `v0.0.1+2`](#authentication---v0012)
- [`navigation` - `v0.0.1+2`](#navigation---v0012)
- [`notifications` - `v0.0.1+2`](#notifications---v0012)
- [`deeplinks` - `v0.0.1+2`](#deeplinks---v0012)
- [`theme` - `v0.0.1+2`](#theme---v0012)
- [`widgets` - `v0.0.1+2`](#widgets---v0012)

Packages with dependency updates only:

> Packages listed below depend on other packages in this workspace that have had changes. Their versions have been incremented to bump the minimum dependency versions of the packages they depend upon in this project.

- `admob` - `v0.0.1+2`
- `authentication` - `v0.0.1+2`
- `navigation` - `v0.0.1+2`
- `notifications` - `v0.0.1+2`
- `deeplinks` - `v0.0.1+2`
- `theme` - `v0.0.1+2`
- `widgets` - `v0.0.1+2`

---

#### `utilities` - `v0.0.1+2`

- **REFACTOR**: added theme test folder.

## 2024-04-02

### Changes

---

Packages with breaking changes:

- There are no breaking changes in this release.

Packages with other changes:

- [`admob` - `v0.0.1+1`](#admob---v0011)
- [`authentication` - `v0.0.1+1`](#authentication---v0011)
- [`deeplinks` - `v0.0.1+1`](#deeplinks---v0011)
- [`navigation` - `v0.0.1+1`](#navigation---v0011)
- [`notifications` - `v0.0.1+1`](#notifications---v0011)
- [`theme` - `v0.0.1+1`](#theme---v0011)
- [`utilities` - `v0.0.1+1`](#utilities---v0011)
- [`widgets` - `v0.0.1+1`](#widgets---v0011)

---

#### `admob` - `v0.0.1+1`

- **REFACTOR**: code cleanup for linter usage.

#### `authentication` - `v0.0.1+1`

- **REFACTOR**: code cleanup for linter usage.

#### `deeplinks` - `v0.0.1+1`

- **REFACTOR**: code cleanup for linter usage.

#### `navigation` - `v0.0.1+1`

- **REFACTOR**: code cleanup for linter usage.

#### `notifications` - `v0.0.1+1`

- **REFACTOR**: code cleanup for linter usage.

#### `theme` - `v0.0.1+1`

- **REFACTOR**: code cleanup for linter usage.

#### `utilities` - `v0.0.1+1`

- **REFACTOR**: code cleanup for linter usage.

#### `widgets` - `v0.0.1+1`

- **REFACTOR**: code cleanup for linter usage.
