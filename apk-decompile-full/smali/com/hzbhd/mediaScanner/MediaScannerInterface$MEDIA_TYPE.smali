.class public final enum Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;
.super Ljava/lang/Enum;
.source "MediaScannerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/mediaScanner/MediaScannerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MEDIA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

.field public static final enum AUDIO:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

.field public static final enum IMAGE:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

.field public static final enum INVALID:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

.field public static final enum VIDEO:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 134
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    const-string v1, "AUDIO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->AUDIO:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    .line 135
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    const-string v1, "VIDEO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->VIDEO:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    .line 136
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    const-string v1, "IMAGE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->IMAGE:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    .line 137
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    const-string v1, "INVALID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->INVALID:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    .line 133
    sget-object v6, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->AUDIO:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->VIDEO:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->IMAGE:Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->$VALUES:[Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;
    .locals 1

    .line 133
    const-class v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;
    .locals 1

    .line 133
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->$VALUES:[Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/mediaScanner/MediaScannerInterface$MEDIA_TYPE;

    return-object v0
.end method
