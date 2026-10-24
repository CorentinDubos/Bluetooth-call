.class Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;
.super Ljava/lang/Object;
.source "PopupMenuButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/_47/PopupMenuButton;
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

.field final synthetic this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;


# direct methods
.method public constructor <init>(Lcom/hzbhd/common/ui/_47/PopupMenuButton;ILjava/lang/String;)V
    .locals 2

    .line 384
    iput-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 368
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 371
    iput-object v1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 372
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 373
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 374
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 385
    iput p2, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 386
    iput-object p3, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/common/ui/_47/PopupMenuButton;ILjava/lang/String;I)V
    .locals 2

    .line 402
    iput-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 368
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 371
    iput-object v1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 372
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 373
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 374
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 403
    iput p2, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 404
    iput-object p3, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    .line 405
    iput p4, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuId:I

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/common/ui/_47/PopupMenuButton;ILjava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 460
    iput-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 368
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 371
    iput-object v1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 372
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 373
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 374
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 461
    iput p2, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 462
    iput-object p3, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    .line 463
    iput-boolean p4, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasInfo:Z

    .line 464
    iput-object p5, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/common/ui/_47/PopupMenuButton;ILjava/lang/String;ZLjava/lang/String;I)V
    .locals 2

    .line 481
    iput-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 368
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 371
    iput-object v1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 372
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 373
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 374
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 482
    iput p2, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 483
    iput-object p3, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    .line 484
    iput-boolean p4, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasInfo:Z

    .line 485
    iput-object p5, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 486
    iput p6, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuId:I

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/common/ui/_47/PopupMenuButton;ILjava/lang/String;ZZ)V
    .locals 2

    .line 420
    iput-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 368
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 371
    iput-object v1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 372
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 373
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 374
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 421
    iput p2, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 422
    iput-object p3, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    .line 423
    iput-boolean p4, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 424
    iput-boolean p5, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    return-void
.end method

.method public constructor <init>(Lcom/hzbhd/common/ui/_47/PopupMenuButton;ILjava/lang/String;ZZI)V
    .locals 2

    .line 440
    iput-object p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->this$0:Lcom/hzbhd/common/ui/_47/PopupMenuButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 368
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasInfo:Z

    const-string v1, ""

    .line 371
    iput-object v1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mInfo:Ljava/lang/String;

    .line 372
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 373
    iput-boolean v0, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 374
    iput p1, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuId:I

    .line 441
    iput p2, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuIcon:I

    .line 442
    iput-object p3, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuName:Ljava/lang/String;

    .line 443
    iput-boolean p4, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mHasSwitch:Z

    .line 444
    iput-boolean p5, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mSwitchOnOff:Z

    .line 445
    iput p6, p0, Lcom/hzbhd/common/ui/_47/PopupMenuButton$MenuListItem;->mMenuId:I

    return-void
.end method
