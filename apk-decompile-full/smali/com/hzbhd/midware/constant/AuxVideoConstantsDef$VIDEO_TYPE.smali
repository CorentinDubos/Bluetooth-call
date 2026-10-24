.class public final enum Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;
.super Ljava/lang/Enum;
.source "AuxVideoConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/AuxVideoConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VIDEO_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

.field public static final enum AUX1:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

.field public static final enum AUX2:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

.field public static final enum CAMERA:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

.field public static final enum DVDC:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

.field public static final enum IPOD:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

.field public static final enum MPEG:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

.field public static final enum TV:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 7
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    const-string v1, "MPEG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->MPEG:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    .line 8
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    const-string v1, "AUX2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->AUX2:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    .line 9
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    const-string v1, "TV"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->TV:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    .line 10
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    const-string v1, "CAMERA"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->CAMERA:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    .line 11
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    const-string v1, "DVDC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->DVDC:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    .line 12
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    const-string v1, "AUX1"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->AUX1:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    .line 13
    new-instance v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    const-string v1, "IPOD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->IPOD:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    .line 6
    sget-object v9, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->MPEG:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    aput-object v9, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->AUX2:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->TV:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->CAMERA:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    aput-object v2, v1, v5

    sget-object v2, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->DVDC:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    aput-object v2, v1, v6

    sget-object v2, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->AUX1:Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->$VALUES:[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;
    .locals 1

    .line 6
    const-class v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;
    .locals 1

    .line 6
    sget-object v0, Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->$VALUES:[Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/AuxVideoConstantsDef$VIDEO_TYPE;

    return-object v0
.end method
