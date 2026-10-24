.class Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;
.super Ljava/lang/Object;
.source "MpegplayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DVDTitleChapterUpdateStruct"
.end annotation


# instance fields
.field public mCurrChapter:I

.field public mCurrTitle:I

.field public mTotalChapter:I

.field public mTotalTitle:I

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;


# direct methods
.method public constructor <init>(Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;IIII)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;->this$0:Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p2, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;->mTotalTitle:I

    .line 174
    iput p3, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;->mTotalChapter:I

    .line 175
    iput p4, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;->mCurrTitle:I

    .line 176
    iput p5, p0, Lcom/hzbhd/midwareproxy/mpeg/MpegplayerManager$DVDTitleChapterUpdateStruct;->mCurrChapter:I

    return-void
.end method
