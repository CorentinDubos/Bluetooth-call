.class final Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$1;
.super Ljava/lang/Object;
.source "AvrcpCtPlayerUtility.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)I
    .locals 4

    .line 168
    iget v0, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mpriority:I

    iget v1, p2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mpriority:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    return v2

    .line 170
    :cond_0
    iget v0, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mpriority:I

    iget v1, p2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mpriority:I

    const/4 v3, -0x1

    if-ge v0, v1, :cond_1

    return v3

    .line 173
    :cond_1
    iget v0, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mpriority2:I

    iget v1, p2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mpriority2:I

    if-le v0, v1, :cond_2

    return v2

    .line 175
    :cond_2
    iget p1, p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mpriority2:I

    iget p2, p2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;->mpriority2:I

    if-ge p1, p2, :cond_3

    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 166
    check-cast p1, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    check-cast p2, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;

    invoke-virtual {p0, p1, p2}, Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$1;->compare(Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;Lcom/autochips/bluetooth/avrcpct/AvrcpCtPlayerUtility$bt_music_avrcp_request;)I

    move-result p1

    return p1
.end method
