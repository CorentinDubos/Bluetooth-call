.class Lcom/hzbhd/common/ui/ParkingWindow$2;
.super Ljava/lang/Object;
.source "ParkingWindow.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/ParkingWindow;->initFloatView(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/ParkingWindow;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/ParkingWindow;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/hzbhd/common/ui/ParkingWindow$2;->this$0:Lcom/hzbhd/common/ui/ParkingWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 158
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    const/16 p2, 0x52

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/hzbhd/common/ui/ParkingWindow$2;->this$0:Lcom/hzbhd/common/ui/ParkingWindow;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/ParkingWindow;->dismissWindow()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
