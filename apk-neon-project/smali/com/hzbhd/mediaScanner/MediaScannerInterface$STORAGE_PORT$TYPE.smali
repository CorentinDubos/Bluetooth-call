.class public final enum Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;
.super Ljava/lang/Enum;
.source "MediaScannerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

.field public static final enum EMULATED:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

.field public static final enum OTHER:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

.field public static final enum SD:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

.field public static final enum USB:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    const-string v1, "USB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->USB:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    const-string v1, "EMULATED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->EMULATED:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    const-string v1, "SD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->SD:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    const-string v1, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->OTHER:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    sget-object v6, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->USB:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->EMULATED:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->SD:Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->$VALUES:[Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;
    .locals 1

    .line 11
    const-class v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;
    .locals 1

    .line 11
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->$VALUES:[Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/mediaScanner/MediaScannerInterface$STORAGE_PORT$TYPE;

    return-object v0
.end method
