.class Lcom/hzbhd/bluetooth/widget/Keyboard$26;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/widget/Keyboard;->initLayout(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/widget/Keyboard;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/widget/Keyboard;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/hzbhd/bluetooth/widget/Keyboard$26;->this$0:Lcom/hzbhd/bluetooth/widget/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 305
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/Keyboard$26;->this$0:Lcom/hzbhd/bluetooth/widget/Keyboard;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/widget/Keyboard;->access$700(Lcom/hzbhd/bluetooth/widget/Keyboard;)Z

    move-result p1

    return p1
.end method
