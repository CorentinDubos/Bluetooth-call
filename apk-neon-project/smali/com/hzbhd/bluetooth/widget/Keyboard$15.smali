.class Lcom/hzbhd/bluetooth/widget/Keyboard$15;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 234
    iput-object p1, p0, Lcom/hzbhd/bluetooth/widget/Keyboard$15;->this$0:Lcom/hzbhd/bluetooth/widget/Keyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/hzbhd/bluetooth/widget/Keyboard$15;->this$0:Lcom/hzbhd/bluetooth/widget/Keyboard;

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/widget/Keyboard;->access$000(Lcom/hzbhd/bluetooth/widget/Keyboard;I)V

    return-void
.end method
