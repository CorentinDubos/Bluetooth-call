.class Lcom/hzbhd/bluetooth/neon/NeonKit$1$1;
.super Ljava/lang/Object;
.source "NeonKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/neon/NeonKit$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/neon/NeonKit$1;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/neon/NeonKit$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1$1;->this$0:Lcom/hzbhd/bluetooth/neon/NeonKit$1;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1$1;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1$1;->this$0:Lcom/hzbhd/bluetooth/neon/NeonKit$1;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/neon/NeonKit$1;->val$key:Ljava/lang/String;

    invoke-static {}, Lcom/hzbhd/bluetooth/neon/NeonKit;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1$1;->this$0:Lcom/hzbhd/bluetooth/neon/NeonKit$1;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/neon/NeonKit$1;->val$art:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1$1;->val$b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    :cond_0
    return-void
.end method
