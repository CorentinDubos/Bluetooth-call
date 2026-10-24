.class Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;
.super Ljava/lang/Object;
.source "PopupMenuButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/PopupMenuButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuListItem"
.end annotation


# instance fields
.field public mHasInfo:Z

.field public mHasSwitch:Z

.field public mInfo:Ljava/lang/String;

.field public mMenuIcon:I

.field public mMenuId:I

.field public mMenuName:Ljava/lang/String;

.field public mSwitchOnOff:Z

.field final synthetic this$0:Lcom/hzbhd/common/ui/PopupMenuButton;


# direct methods
.method public constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;)V
    .locals 2

    .line 377
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 361
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 364
    iput-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 365
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 366
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 367
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 378
    iput p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 379
    iput-object p3, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;I)V
    .locals 2

    .line 395
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 361
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 364
    iput-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 365
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 366
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 367
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 396
    iput p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 397
    iput-object p3, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    .line 398
    iput p4, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuId:I

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 453
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 361
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 364
    iput-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 365
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 366
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 367
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 454
    iput p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 455
    iput-object p3, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    .line 456
    iput-boolean p4, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasInfo:Z

    .line 457
    iput-object p5, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;ZLjava/lang/String;I)V
    .locals 2

    .line 474
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 361
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 364
    iput-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 365
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 366
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 367
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 475
    iput p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 476
    iput-object p3, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    .line 477
    iput-boolean p4, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasInfo:Z

    .line 478
    iput-object p5, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 479
    iput p6, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuId:I

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;ZZ)V
    .locals 2

    .line 413
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 361
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 364
    iput-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 365
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 366
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 367
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 414
    iput p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 415
    iput-object p3, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    .line 416
    iput-boolean p4, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 417
    iput-boolean p5, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton;ILjava/lang/String;ZZI)V
    .locals 2

    .line 433
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 361
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 364
    iput-object v1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 365
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 366
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 367
    iput p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 434
    iput p2, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 435
    iput-object p3, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    .line 436
    iput-boolean p4, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 437
    iput-boolean p5, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 438
    iput p6, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItem;->mMenuId:I

    return-void
.end method
