.class Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PopupMenuButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mIconIv:Landroid/widget/ImageView;

.field public mInfoTv:Landroid/widget/TextView;

.field public mNameTv:Landroid/widget/TextView;

.field public mSwitchIb:Landroid/widget/ImageButton;

.field final synthetic this$1:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;


# direct methods
.method private constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;)V
    .locals 0

    .line 626
    iput-object p1, p0, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;->this$1:Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;Lcom/hzbhd/common/ui/PopupMenuButton$1;)V
    .locals 0

    .line 626
    invoke-direct {p0, p1}, Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter$ViewHolder;-><init>(Lcom/hzbhd/common/ui/PopupMenuButton$MenuListItemAdapter;)V

    return-void
.end method
