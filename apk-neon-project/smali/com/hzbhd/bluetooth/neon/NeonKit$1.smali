.class Lcom/hzbhd/bluetooth/neon/NeonKit$1;
.super Ljava/lang/Object;
.source "NeonKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/neon/NeonKit;->onTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Ljava/lang/String;

.field final synthetic val$art:Landroid/widget/ImageView;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$t:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1;->val$t:Ljava/lang/String;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1;->val$a:Ljava/lang/String;

    iput-object p3, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1;->val$art:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1;->val$t:Ljava/lang/String;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1;->val$a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hzbhd/bluetooth/neon/NeonKit;->fetch(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/hzbhd/bluetooth/neon/NeonKit;->access$000()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$1;->val$key:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {}, Lcom/hzbhd/bluetooth/neon/NeonKit;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/hzbhd/bluetooth/neon/NeonKit$1$1;

    invoke-direct {v2, p0, v0}, Lcom/hzbhd/bluetooth/neon/NeonKit$1$1;-><init>(Lcom/hzbhd/bluetooth/neon/NeonKit$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    :cond_0
    return-void
.end method
