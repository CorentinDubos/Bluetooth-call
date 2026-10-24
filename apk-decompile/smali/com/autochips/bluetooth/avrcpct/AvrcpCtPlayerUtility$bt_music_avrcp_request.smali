.class public Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;
.super Ljava/lang/Object;
.source "AvrcpCtPlayerUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "bt_music_avrcp_request"
.end annotation


# instance fields
.field public mBT_Addr:Ljava/lang/String;

.field public mcmd_index:I

.field public mpriority:I

.field public mpriority2:I

.field final synthetic this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;


# direct methods
.method public constructor <init>(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;ILjava/lang/String;II)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->this$0:Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput p2, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mcmd_index:I

    .line 750
    iput-object p3, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mBT_Addr:Ljava/lang/String;

    .line 751
    iput p4, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mpriority:I

    .line 752
    iput p5, p0, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mpriority2:I

    return-void
.end method
