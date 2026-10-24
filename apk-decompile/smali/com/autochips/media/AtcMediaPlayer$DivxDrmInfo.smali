.class public Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;
.super Ljava/lang/Object;
.source "AtcMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/media/AtcMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DivxDrmInfo"
.end annotation


# instance fields
.field public acptb:I

.field public cgmsa:I

.field public digitalProtection:I

.field public lict:I

.field public maxplayCount:I

.field public remainPlayCount:I

.field final synthetic this$0:Lcom/autochips/media/AtcMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/autochips/media/AtcMediaPlayer;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/autochips/media/AtcMediaPlayer$DivxDrmInfo;->this$0:Lcom/autochips/media/AtcMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
