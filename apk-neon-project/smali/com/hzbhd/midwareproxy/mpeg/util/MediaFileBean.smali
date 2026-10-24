.class public Lcom/hzbhd/midwareproxy/mpeg/util/MediaFileBean;
.super Ljava/lang/Object;
.source "MediaFileBean.java"


# instance fields
.field public Album:Ljava/lang/String;

.field public Aritist:Ljava/lang/String;

.field private Clips:I

.field private FileName:Ljava/lang/String;

.field private Id:I

.field private ParentId:I

.field public Song:Ljava/lang/String;

.field public isFile:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClips()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/hzbhd/midwareproxy/mpeg/util/MediaFileBean;->Clips:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/mpeg/util/MediaFileBean;->FileName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/hzbhd/midwareproxy/mpeg/util/MediaFileBean;->Id:I

    return v0
.end method

.method public getParentId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/hzbhd/midwareproxy/mpeg/util/MediaFileBean;->ParentId:I

    return v0
.end method

.method public setClips(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/hzbhd/midwareproxy/mpeg/util/MediaFileBean;->Clips:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/mpeg/util/MediaFileBean;->FileName:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/hzbhd/midwareproxy/mpeg/util/MediaFileBean;->Id:I

    return-void
.end method

.method public setParentId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/hzbhd/midwareproxy/mpeg/util/MediaFileBean;->ParentId:I

    return-void
.end method
