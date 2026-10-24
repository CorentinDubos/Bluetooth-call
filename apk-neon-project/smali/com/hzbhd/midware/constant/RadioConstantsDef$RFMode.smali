.class public final enum Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;
.super Ljava/lang/Enum;
.source "RadioConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/RadioConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RFMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

.field public static final enum RF_MODE_DX:Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

.field public static final enum RF_MODE_LOC:Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 52
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

    const-string v1, "RF_MODE_LOC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;->RF_MODE_LOC:Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

    .line 53
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

    const-string v1, "RF_MODE_DX"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;->RF_MODE_DX:Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

    .line 51
    sget-object v4, Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;->RF_MODE_LOC:Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;->$VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;
    .locals 1

    .line 51
    const-class v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;
    .locals 1

    .line 51
    sget-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;->$VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/RadioConstantsDef$RFMode;

    return-object v0
.end method
