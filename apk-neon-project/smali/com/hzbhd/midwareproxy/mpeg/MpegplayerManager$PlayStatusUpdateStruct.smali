.class Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;
.super Ljava/lang/Object;
.source "MpegplayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayStatusUpdateStruct"
.end annotation


# instance fields
.field public mPlayStatus:I

.field public mRepeatStatus:I

.field public mShuffleStatus:I

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;III)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p2, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;->mPlayStatus:I

    .line 160
    iput p3, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;->mRepeatStatus:I

    .line 161
    iput p4, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$PlayStatusUpdateStruct;->mShuffleStatus:I

    return-void
.end method
