.class public Lcom/hzbhd/midwareproxy/iPod/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hzbhd/midwareproxy/iPod/DateTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final INCLUDE_WEEKDAY:I = 0x1

.field public static final NOT_INCLUDE_WEEKDAY:I


# instance fields
.field private mDayOfMonth:I

.field private mHours:I

.field private mIncludeWeekday:I

.field private mMinutes:I

.field private mMonth:I

.field private mOrgiData:[B

.field private mSeconds:I

.field private mWeekday:I

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 136
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/DateTime$1;

    invoke-direct {v0}, Lcom/hzbhd/midwareproxy/iPod/DateTime$1;-><init>()V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 49
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mOrgiData:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 49
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mOrgiData:[B

    .line 119
    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/DateTime;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/midwareproxy/iPod/DateTime;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x1

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/midwareproxy/iPod/DateTime;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 49
    iput-object v1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mOrgiData:[B

    .line 100
    iput p3, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mIncludeWeekday:I

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    .line 108
    :goto_0
    array-length p3, p1

    sub-int/2addr p3, p2

    if-lt p3, v0, :cond_1

    .line 113
    new-array p3, v0, [B

    iput-object p3, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mOrgiData:[B

    const/4 v1, 0x0

    .line 114
    invoke-static {p1, p2, p3, v1, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 115
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mOrgiData:[B

    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/iPod/DateTime;->parse([B)V

    return-void

    .line 109
    :cond_1
    new-instance p3, Ljava/security/InvalidParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "except data length at least 8 byte, but actual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private parse([B)V
    .locals 3

    .line 123
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->printByteArrayInHex([B)V

    const/4 v0, 0x0

    .line 124
    aget-byte v0, p1, v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mSeconds:I

    const/4 v0, 0x1

    .line 125
    aget-byte v1, p1, v0

    iput v1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mMinutes:I

    const/4 v1, 0x2

    .line 126
    aget-byte v1, p1, v1

    iput v1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mHours:I

    const/4 v1, 0x3

    .line 127
    aget-byte v1, p1, v1

    iput v1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mDayOfMonth:I

    const/4 v1, 0x4

    .line 128
    aget-byte v1, p1, v1

    iput v1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mMonth:I

    const/4 v1, 0x5

    .line 129
    aget-byte v1, p1, v1

    const/4 v2, 0x6

    aget-byte v2, p1, v2

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;->byteToShort(BB)S

    move-result v1

    iput v1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mYear:I

    .line 130
    iget v1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mIncludeWeekday:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x7

    .line 131
    aget-byte p1, p1, v0

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mWeekday:I

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/iPod/DateTime;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DateTime"

    invoke-static {v0, p1}, Lcom/hzbhd/midwareproxy/iPod/utils/Trace;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mDayOfMonth:I

    return v0
.end method

.method public getHours()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mHours:I

    return v0
.end method

.method public getMinutes()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mMinutes:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mMonth:I

    return v0
.end method

.method public getSeconds()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mSeconds:I

    return v0
.end method

.method public getWeekday()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mWeekday:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mYear:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mSeconds:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mMinutes:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mHours:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mDayOfMonth:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mMonth:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mYear:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mIncludeWeekday:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mWeekday:I

    :cond_0
    return-void
.end method

.method public toByteArray()[B
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mOrgiData:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    iget v1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget v2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget v1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mDayOfMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget v2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mHours:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget v3, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mMinutes:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget v2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mSeconds:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    iget v2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mIncludeWeekday:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mWeekday:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 155
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mSeconds:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mMinutes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mHours:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mDayOfMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mMonth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mYear:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mIncludeWeekday:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mIncludeWeekday:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 163
    iget p2, p0, Lcom/hzbhd/midwareproxy/iPod/DateTime;->mWeekday:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void
.end method
