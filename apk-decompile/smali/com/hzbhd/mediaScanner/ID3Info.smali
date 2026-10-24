.class public Lcom/hzbhd/mediaScanner/ID3Info;
.super Ljava/lang/Object;
.source "ID3Info.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/mediaScanner/ID3Info;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public album:Lcom/hzbhd/mediaScanner/MediaObjectName;

.field public album_py:Ljava/lang/String;

.field public artist:Lcom/hzbhd/mediaScanner/MediaObjectName;

.field public artist_py:Ljava/lang/String;

.field public composer:Lcom/hzbhd/mediaScanner/MediaObjectName;

.field public composer_py:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public file:Lcom/hzbhd/mediaScanner/MediaObjectName;

.field public genre:Lcom/hzbhd/mediaScanner/MediaObjectName;

.field public genre_py:Ljava/lang/String;

.field public picPath:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public title_py:Ljava/lang/String;

.field public track_number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/hzbhd/mediaScanner/ID3Info$1;

    invoke-direct {v0}, Lcom/hzbhd/mediaScanner/ID3Info$1;-><init>()V

    sput-object v0, Lcom/hzbhd/mediaScanner/ID3Info;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->file:Lcom/hzbhd/mediaScanner/MediaObjectName;

    .line 23
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->title:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->artist:Lcom/hzbhd/mediaScanner/MediaObjectName;

    .line 25
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->album:Lcom/hzbhd/mediaScanner/MediaObjectName;

    .line 26
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->genre:Lcom/hzbhd/mediaScanner/MediaObjectName;

    .line 27
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->composer:Lcom/hzbhd/mediaScanner/MediaObjectName;

    .line 28
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->duration:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->track_number:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->picPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaObjectName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/mediaScanner/MediaObjectName;

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->file:Lcom/hzbhd/mediaScanner/MediaObjectName;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->title:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaObjectName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/mediaScanner/MediaObjectName;

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->artist:Lcom/hzbhd/mediaScanner/MediaObjectName;

    .line 37
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaObjectName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/mediaScanner/MediaObjectName;

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->album:Lcom/hzbhd/mediaScanner/MediaObjectName;

    .line 38
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaObjectName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/mediaScanner/MediaObjectName;

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->genre:Lcom/hzbhd/mediaScanner/MediaObjectName;

    .line 39
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaObjectName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/mediaScanner/MediaObjectName;

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->composer:Lcom/hzbhd/mediaScanner/MediaObjectName;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->duration:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->track_number:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/mediaScanner/ID3Info;->picPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->file:Lcom/hzbhd/mediaScanner/MediaObjectName;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/mediaScanner/MediaObjectName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 53
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->artist:Lcom/hzbhd/mediaScanner/MediaObjectName;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/mediaScanner/MediaObjectName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->album:Lcom/hzbhd/mediaScanner/MediaObjectName;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/mediaScanner/MediaObjectName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 56
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->genre:Lcom/hzbhd/mediaScanner/MediaObjectName;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/mediaScanner/MediaObjectName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    iget-object v0, p0, Lcom/hzbhd/mediaScanner/ID3Info;->composer:Lcom/hzbhd/mediaScanner/MediaObjectName;

    invoke-virtual {v0, p1, p2}, Lcom/hzbhd/mediaScanner/MediaObjectName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    iget-object p2, p0, Lcom/hzbhd/mediaScanner/ID3Info;->duration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/hzbhd/mediaScanner/ID3Info;->track_number:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object p2, p0, Lcom/hzbhd/mediaScanner/ID3Info;->picPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
