.class Lcom/hzbhd/common/ui/ParkingWindow$1;
.super Ljava/lang/Object;
.source "ParkingWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 140
    iput-object p1, p0, Lcom/hzbhd/common/ui/ParkingWindow$1;->this$0:Lcom/hzbhd/common/ui/ParkingWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 143
    iget-object p1, p0, Lcom/hzbhd/common/ui/ParkingWindow$1;->this$0:Lcom/hzbhd/common/ui/ParkingWindow;

    invoke-virtual {p1}, Lcom/hzbhd/common/ui/ParkingWindow;->dismissWindow()V

    return-void
.end method
