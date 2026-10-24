.class Lcom/autochips/media/AtcMediaPlayer$1;
.super Ljava/lang/Object;
.source "AtcMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSetRateCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autochips/media/AtcMediaPlayer;->setOnSetRateCompleteListener(Lcom/autochips/media/AtcMediaPlayer$OnSetRateCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autochips/media/AtcMediaPlayer;


# direct methods
.method constructor <init>(Lcom/autochips/media/AtcMediaPlayer;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/autochips/media/AtcMediaPlayer$1;->this$0:Lcom/autochips/media/AtcMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetRateComplete(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer$1;->this$0:Lcom/autochips/media/AtcMediaPlayer;

    invoke-static {v0}, Lcom/autochips/media/AtcMediaPlayer;->access$000(Lcom/autochips/media/AtcMediaPlayer;)Lcom/autochips/media/AtcMediaPlayer$OnSetRateCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/autochips/media/AtcMediaPlayer$1;->this$0:Lcom/autochips/media/AtcMediaPlayer;

    invoke-static {v0}, Lcom/autochips/media/AtcMediaPlayer;->access$000(Lcom/autochips/media/AtcMediaPlayer;)Lcom/autochips/media/AtcMediaPlayer$OnSetRateCompleteListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/autochips/media/AtcMediaPlayer$OnSetRateCompleteListener;->onSetRateComplete(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void
.end method
