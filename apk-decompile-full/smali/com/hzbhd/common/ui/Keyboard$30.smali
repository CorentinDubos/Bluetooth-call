.class Lcom/hzbhd/common/ui/Keyboard$30;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/common/ui/Keyboard;->initLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/common/ui/Keyboard;


# direct methods
.method constructor <init>(Lcom/hzbhd/common/ui/Keyboard;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/hzbhd/common/ui/Keyboard$30;->this$0:Lcom/hzbhd/common/ui/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 332
    iget-object p1, p0, Lcom/hzbhd/common/ui/Keyboard$30;->this$0:Lcom/hzbhd/common/ui/Keyboard;

    invoke-static {p1}, Lcom/hzbhd/common/ui/Keyboard;->access$1100(Lcom/hzbhd/common/ui/Keyboard;)Z

    move-result p1

    return p1
.end method
