.class public final Lcom/hzbhd/bluetooth/calllog/CallLogQuery;
.super Ljava/lang/Object;
.source "CallLogQuery.java"


# static fields
.field public static final CACHED_NAME:I = 0x5

.field public static final CACHED_NUMBER_LABEL:I = 0x7

.field public static final CACHED_NUMBER_TYPE:I = 0x6

.field public static final CACHED_PHOTO_ID:I = 0x9

.field public static final CALL_TYPE:I = 0x4

.field public static final DATE:I = 0x2

.field public static final DURATION:I = 0x3

.field public static final EXTENDED_PROJECTION:[Ljava/lang/String;

.field public static final ID:I = 0x0

.field public static final IS_READ:I = 0x8

.field public static final NUMBER:I = 0x1

.field public static final SECTION:I = 0x11

.field public static final SECTION_NAME:Ljava/lang/String; = "section"

.field public static final SECTION_NEW_HEADER:I = 0x0

.field public static final SECTION_NEW_ITEM:I = 0x1

.field public static final SECTION_OLD_HEADER:I = 0x2

.field public static final SECTION_OLD_ITEM:I = 0x3

.field public static final _PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "_id"

    const-string v1, "number"

    const-string v2, "date"

    const-string v3, "duration"

    const-string/jumbo v4, "type"

    const-string v5, "name"

    const-string v6, "numbertype"

    const-string v7, "numberlabel"

    const-string v8, "is_read"

    const-string v9, "photo_id"

    .line 30
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    .line 75
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/hzbhd/bluetooth/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    .line 76
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    sget-object v0, Lcom/hzbhd/bluetooth/calllog/CallLogQuery;->EXTENDED_PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/hzbhd/bluetooth/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    const-string/jumbo v2, "section"

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "country_detector"

    .line 94
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/CountryDetector;

    .line 95
    invoke-virtual {p0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isNewSection(Landroid/database/Cursor;)Z
    .locals 1

    const/16 v0, 0x11

    .line 87
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isSectionHeader(Landroid/database/Cursor;)Z
    .locals 1

    const/16 v0, 0x11

    .line 81
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
