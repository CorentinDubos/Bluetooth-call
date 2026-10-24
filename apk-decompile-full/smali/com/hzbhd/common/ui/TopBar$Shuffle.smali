.class public final enum Lcom/hzbhd/common/ui/TopBar$Shuffle;
.super Ljava/lang/Enum;
.source "TopBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/TopBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Shuffle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/common/ui/TopBar$Shuffle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/common/ui/TopBar$Shuffle;

.field public static final enum SHUFFLE_OFF:Lcom/hzbhd/common/ui/TopBar$Shuffle;

.field public static final enum SHUFFLE_ON:Lcom/hzbhd/common/ui/TopBar$Shuffle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    new-instance v0, Lcom/hzbhd/common/ui/TopBar$Shuffle;

    const-string v1, "SHUFFLE_ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/common/ui/TopBar$Shuffle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/common/ui/TopBar$Shuffle;->SHUFFLE_ON:Lcom/hzbhd/common/ui/TopBar$Shuffle;

    new-instance v0, Lcom/hzbhd/common/ui/TopBar$Shuffle;

    const-string v1, "SHUFFLE_OFF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/common/ui/TopBar$Shuffle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/common/ui/TopBar$Shuffle;->SHUFFLE_OFF:Lcom/hzbhd/common/ui/TopBar$Shuffle;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/common/ui/TopBar$Shuffle;

    .line 68
    sget-object v4, Lcom/hzbhd/common/ui/TopBar$Shuffle;->SHUFFLE_ON:Lcom/hzbhd/common/ui/TopBar$Shuffle;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/common/ui/TopBar$Shuffle;->$VALUES:[Lcom/hzbhd/common/ui/TopBar$Shuffle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/common/ui/TopBar$Shuffle;
    .locals 1

    .line 68
    const-class v0, Lcom/hzbhd/common/ui/TopBar$Shuffle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/common/ui/TopBar$Shuffle;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/common/ui/TopBar$Shuffle;
    .locals 1

    .line 68
    sget-object v0, Lcom/hzbhd/common/ui/TopBar$Shuffle;->$VALUES:[Lcom/hzbhd/common/ui/TopBar$Shuffle;

    invoke-virtual {v0}, [Lcom/hzbhd/common/ui/TopBar$Shuffle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/common/ui/TopBar$Shuffle;

    return-object v0
.end method
