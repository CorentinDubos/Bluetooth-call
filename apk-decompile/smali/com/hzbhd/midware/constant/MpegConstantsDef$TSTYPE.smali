.class public final enum Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;
.super Ljava/lang/Enum;
.source "MpegConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/MpegConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TSTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

.field public static final enum DOWN:Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

.field public static final enum UP:Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 427
    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    const-string v1, "UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;->UP:Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    new-instance v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    const-string v1, "DOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;->DOWN:Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    .line 426
    sget-object v4, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;->UP:Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 426
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;
    .locals 1

    .line 426
    const-class v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;
    .locals 1

    .line 426
    sget-object v0, Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;->$VALUES:[Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/MpegConstantsDef$TSTYPE;

    return-object v0
.end method
