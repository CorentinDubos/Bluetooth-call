.class public final enum Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;
.super Ljava/lang/Enum;
.source "MediaScannerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/mediaScanner/MediaScannerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SCANNING_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

.field public static final enum NOT_START:Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

.field public static final enum SCANNED_FINISH:Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

.field public static final enum SCANNING_FILE:Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 141
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    const-string v1, "NOT_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;->NOT_START:Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    .line 142
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    const-string v1, "SCANNING_FILE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;->SCANNING_FILE:Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    .line 143
    new-instance v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    const-string v1, "SCANNED_FINISH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;->SCANNED_FINISH:Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    .line 140
    sget-object v5, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;->NOT_START:Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;->SCANNING_FILE:Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;->$VALUES:[Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;
    .locals 1

    .line 140
    const-class v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;
    .locals 1

    .line 140
    sget-object v0, Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;->$VALUES:[Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    invoke-virtual {v0}, [Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/mediaScanner/MediaScannerInterface$SCANNING_STATE;

    return-object v0
.end method
