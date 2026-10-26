.class Lcom/hzbhd/bluetooth/neon/NeonKit$2;
.super Ljava/lang/Object;
.source "NeonKit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/neon/NeonKit;->bind(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$2;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$2;->val$tag:Ljava/lang/String;

    const-string v1, "neon_tracks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "tracks"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/neon/NeonKit;->openList(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$2;->val$tag:Ljava/lang/String;

    const-string v1, "neon_sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "sms"

    invoke-static {p1, v0}, Lcom/hzbhd/bluetooth/neon/NeonKit;->openList(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/hzbhd/bluetooth/neon/NeonKit$2;->val$tag:Ljava/lang/String;

    const-string v1, "neon_shuffle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-static {p1}, Lcom/hzbhd/bluetooth/neon/NeonKit;->toggleShuffle(Landroid/content/Context;)V

    goto :goto_0

    .line 181
    :cond_2
    invoke-static {p1}, Lcom/hzbhd/bluetooth/neon/NeonKit;->toggleRepeat(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Erreur : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 186
    :goto_1
    return-void
.end method
