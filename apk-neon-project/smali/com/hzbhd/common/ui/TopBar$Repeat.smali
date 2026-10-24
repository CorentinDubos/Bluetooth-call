.class public final enum Lcom/hzbhd/common/ui/TopBar$Repeat;
.super Ljava/lang/Enum;
.source "TopBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/common/ui/TopBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Repeat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/common/ui/TopBar$Repeat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/common/ui/TopBar$Repeat;

.field public static final enum REPEAT_ALL:Lcom/hzbhd/common/ui/TopBar$Repeat;

.field public static final enum REPEAT_FOLDER:Lcom/hzbhd/common/ui/TopBar$Repeat;

.field public static final enum REPEAT_OFF:Lcom/hzbhd/common/ui/TopBar$Repeat;

.field public static final enum REPEAT_ONE:Lcom/hzbhd/common/ui/TopBar$Repeat;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 73
    new-instance v0, Lcom/hzbhd/common/ui/TopBar$Repeat;

    const-string v1, "REPEAT_ONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/common/ui/TopBar$Repeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/common/ui/TopBar$Repeat;->REPEAT_ONE:Lcom/hzbhd/common/ui/TopBar$Repeat;

    new-instance v0, Lcom/hzbhd/common/ui/TopBar$Repeat;

    const-string v1, "REPEAT_ALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/common/ui/TopBar$Repeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/common/ui/TopBar$Repeat;->REPEAT_ALL:Lcom/hzbhd/common/ui/TopBar$Repeat;

    new-instance v0, Lcom/hzbhd/common/ui/TopBar$Repeat;

    const-string v1, "REPEAT_FOLDER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/common/ui/TopBar$Repeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/common/ui/TopBar$Repeat;->REPEAT_FOLDER:Lcom/hzbhd/common/ui/TopBar$Repeat;

    new-instance v0, Lcom/hzbhd/common/ui/TopBar$Repeat;

    const-string v1, "REPEAT_OFF"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/common/ui/TopBar$Repeat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/common/ui/TopBar$Repeat;->REPEAT_OFF:Lcom/hzbhd/common/ui/TopBar$Repeat;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/common/ui/TopBar$Repeat;

    .line 72
    sget-object v6, Lcom/hzbhd/common/ui/TopBar$Repeat;->REPEAT_ONE:Lcom/hzbhd/common/ui/TopBar$Repeat;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/common/ui/TopBar$Repeat;->REPEAT_ALL:Lcom/hzbhd/common/ui/TopBar$Repeat;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/common/ui/TopBar$Repeat;->REPEAT_FOLDER:Lcom/hzbhd/common/ui/TopBar$Repeat;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/common/ui/TopBar$Repeat;->$VALUES:[Lcom/hzbhd/common/ui/TopBar$Repeat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/common/ui/TopBar$Repeat;
    .locals 1

    .line 72
    const-class v0, Lcom/hzbhd/common/ui/TopBar$Repeat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/common/ui/TopBar$Repeat;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/common/ui/TopBar$Repeat;
    .locals 1

    .line 72
    sget-object v0, Lcom/hzbhd/common/ui/TopBar$Repeat;->$VALUES:[Lcom/hzbhd/common/ui/TopBar$Repeat;

    invoke-virtual {v0}, [Lcom/hzbhd/common/ui/TopBar$Repeat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/common/ui/TopBar$Repeat;

    return-object v0
.end method
