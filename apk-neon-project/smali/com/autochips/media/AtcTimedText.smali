.class public final Lcom/autochips/media/AtcTimedText;
.super Ljava/lang/Object;
.source "AtcTimedText.java"


# instance fields
.field private mTimedText:Landroid/media/TimedText;


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/autochips/media/AtcTimedText;->mTimedText:Landroid/media/TimedText;

    return-void
.end method


# virtual methods
.method public getPicture()Landroid/graphics/Bitmap;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/autochips/media/AtcTimedText;->mTimedText:Landroid/media/TimedText;

    invoke-virtual {v0}, Landroid/media/TimedText;->getPicture()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHeight()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/autochips/media/AtcTimedText;->mTimedText:Landroid/media/TimedText;

    invoke-virtual {v0}, Landroid/media/TimedText;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/autochips/media/AtcTimedText;->mTimedText:Landroid/media/TimedText;

    invoke-virtual {v0}, Landroid/media/TimedText;->getVideoWidth()I

    move-result v0

    return v0
.end method
