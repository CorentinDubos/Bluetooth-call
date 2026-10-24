.class public Lcom/hzbhd/bluetooth/paired/PairListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PairListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_PAIR_LIST:Ljava/lang/String; = "com.android.driver.bluetooth.common.pair"

.field public static final EXTRA_ADDR:Ljava/lang/String; = "extra_type_addr"

.field public static final EXTRA_NAME:Ljava/lang/String; = "extra_name"

.field public static final EXTRA_POSITION:Ljava/lang/String; = "extra_position"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "extra_type"

.field public static final EXTRA_TYPE_CONNECT:I = 0x0

.field public static final EXTRA_TYPE_DELETE:I = 0x1

.field public static final EXTRA_TYPE_HIDE_DELETE:I = 0x5

.field public static final EXTRA_TYPE_MASTER:I = 0x2

.field public static final EXTRA_TYPE_PAIR:I = 0x3

.field public static final EXTRA_TYPE_SHOW_DELETE:I = 0x4


# instance fields
.field private bluetoothProfile:I

.field private connectingIndex:I

.field private deleteIndex:I

.field private devList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/bluetooth/bean/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field device_name_id_connected_n54:Landroid/widget/TextView;

.field private listener:Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;

.field private final mActionListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private final mPrimaryListener:Landroid/view/View$OnClickListener;

.field private selectIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->selectIndex:I

    .line 48
    iput v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->connectingIndex:I

    .line 49
    iput v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->deleteIndex:I

    const/4 v0, 0x2

    .line 53
    iput v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->bluetoothProfile:I

    .line 60
    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter$1;-><init>(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter$2;-><init>(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mPrimaryListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter$3;-><init>(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 94
    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mContext:Landroid/content/Context;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f04004a

    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hzbhd/bluetooth/bean/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->selectIndex:I

    .line 48
    iput v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->connectingIndex:I

    .line 49
    iput v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->deleteIndex:I

    const/4 v0, 0x2

    .line 53
    iput v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->bluetoothProfile:I

    .line 60
    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$1;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter$1;-><init>(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$2;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter$2;-><init>(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mPrimaryListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter$3;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter$3;-><init>(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mKeyListener:Landroid/view/View$OnKeyListener;

    .line 101
    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f04004a

    invoke-static {p2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/paired/PairListAdapter;)Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->listener:Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;

    return-object p0
.end method

.method private getIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;
    .locals 2

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.driver.bluetooth.common.pair"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_type_addr"

    .line 180
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_type"

    .line 181
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_name"

    .line 182
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_position"

    .line 183
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getBluetoothProfile()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->bluetoothProfile:I

    return v0
.end method

.method public getConnectingIndex()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->connectingIndex:I

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeleteIndex()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->deleteIndex:I

    return v0
.end method

.method public getDeleteIntent()Landroid/content/Intent;
    .locals 4

    .line 114
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getSelectIndex()I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v1}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    .line 116
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getRemoteDevName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 115
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getDevList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hzbhd/bluetooth/bean/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemSelectAddress_n54()Ljava/lang/String;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getDevList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getSelectIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectIndex()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->selectIndex:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move-object/from16 v3, p2

    goto :goto_0

    .line 193
    :cond_0
    iget-object v3, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040053

    .line 194
    invoke-static {v4}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    :goto_0
    const v4, 0x7f040015

    .line 198
    invoke-static {v4}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "M6"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const v2, 0x7f09018e

    .line 199
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 200
    iget-object v5, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v5, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v5}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v7, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v7}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getRemoteDevName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v5, v7, v6, v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :cond_1
    const v5, 0x7f090214

    .line 204
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    const v8, 0x7f090215

    .line 205
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 206
    iget-object v9, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    iget-object v9, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v9}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v10}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getRemoteDevName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10, v6, v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    if-eqz v8, :cond_2

    .line 208
    iget-object v9, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v8, :cond_3

    .line 209
    iget-object v9, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v9}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v10}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getRemoteDevName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10, v6, v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_3
    const v9, 0x7f090210

    .line 211
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f0901f2

    .line 213
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 214
    iget-object v12, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mPrimaryListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v12, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v12}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isPaired()Z

    move-result v12

    if-nez v12, :cond_4

    .line 216
    iget-object v12, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v12}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v13}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getRemoteDevName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    invoke-direct {v0, v12, v13, v14, v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 218
    :cond_4
    iget v12, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->deleteIndex:I

    if-ne v12, v1, :cond_5

    .line 219
    iget-object v12, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v12}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v13}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getRemoteDevName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x5

    invoke-direct {v0, v12, v13, v14, v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 221
    :cond_5
    iget-object v12, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v12}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v13}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getRemoteDevName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x4

    invoke-direct {v0, v12, v13, v14, v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    :goto_1
    iget-object v12, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v12, 0x7f090211

    .line 226
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    .line 227
    iget-object v14, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mContext:Landroid/content/Context;

    const v15, 0x7f040051

    invoke-static {v14, v15}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(Landroid/content/Context;I)Z

    move-result v14

    const-string v5, "H1"

    if-nez v14, :cond_6

    iget-object v14, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mContext:Landroid/content/Context;

    .line 228
    invoke-static {v14, v4}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_6
    const v14, 0x7f09011d

    .line 229
    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iput-object v14, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->device_name_id_connected_n54:Landroid/widget/TextView;

    :cond_7
    const v14, 0x7f090212

    .line 231
    invoke-virtual {v3, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 232
    iget-object v10, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v10, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v10}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v12}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getRemoteDevName()Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    invoke-direct {v0, v10, v12, v6, v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v13, v10}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    if-eqz v14, :cond_8

    .line 234
    iget-object v10, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    if-eqz v14, :cond_9

    .line 235
    iget-object v10, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v10}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    iget-object v12, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v12}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getRemoteDevName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v10, v12, v6, v1}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->getIntent(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v14, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_9
    const v10, 0x7f09023b

    .line 237
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v12, 0x7f09011c

    .line 239
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 240
    iget-object v6, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v6}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getRemoteDevName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 241
    iget-object v6, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v6}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 243
    :cond_a
    iget-object v6, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v6}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->getRemoteDevName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :goto_2
    invoke-static {v15}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v6

    const-string v15, "A6"

    if-nez v6, :cond_c

    .line 246
    invoke-static {v4}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    goto :goto_4

    .line 247
    :cond_c
    :goto_3
    iget v5, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->selectIndex:I

    if-ne v1, v5, :cond_e

    .line 249
    invoke-static {v4}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v12}, Landroid/widget/TextView;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    .line 250
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v6, -0x1

    .line 251
    iput v6, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->selectIndex:I

    goto :goto_4

    :cond_d
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 253
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    .line 256
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 259
    :goto_4
    iget-object v6, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v6}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isPaired()Z

    move-result v6

    const/16 v12, 0x8

    if-eqz v6, :cond_17

    .line 260
    invoke-virtual {v13, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v2, :cond_f

    .line 261
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    if-eqz v14, :cond_10

    .line 262
    invoke-virtual {v14, v5}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_10
    iget-object v2, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->device_name_id_connected_n54:Landroid/widget/TextView;

    if-eqz v2, :cond_11

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    :cond_11
    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v8, :cond_12

    .line 265
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_12
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    iget v2, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->bluetoothProfile:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_13

    .line 271
    iget-object v2, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isHfpConnected()Z

    move-result v2

    goto :goto_5

    .line 273
    :cond_13
    iget-object v2, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;

    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/bean/BluetoothDevice;->isA2dpConnected()Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_14

    const v2, 0x7f04000a

    .line 277
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 278
    iget-object v2, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->device_name_id_connected_n54:Landroid/widget/TextView;

    if-eqz v2, :cond_15

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_14
    const v2, 0x7f04000b

    .line 280
    invoke-static {v2}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 281
    iget-object v2, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->device_name_id_connected_n54:Landroid/widget/TextView;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15
    :goto_6
    const v2, 0x7f090211

    .line 284
    invoke-virtual {v11, v2}, Landroid/view/View;->setNextFocusRightId(I)V

    const v2, 0x7f0901f2

    .line 285
    invoke-virtual {v13, v2}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    const v5, 0x7f090213

    .line 286
    invoke-virtual {v13, v5}, Landroid/widget/ImageButton;->setNextFocusRightId(I)V

    if-eqz v14, :cond_16

    .line 287
    invoke-virtual {v14, v2}, Landroid/view/View;->setNextFocusLeftId(I)V

    :cond_16
    if-eqz v14, :cond_1b

    .line 288
    invoke-virtual {v14, v5}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_7

    :cond_17
    if-eqz v2, :cond_18

    .line 290
    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_18
    const/4 v2, 0x0

    .line 291
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v8, :cond_19

    .line 293
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_19
    invoke-virtual {v13, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v14, :cond_1a

    .line 296
    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    .line 297
    :cond_1a
    iget-object v2, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->device_name_id_connected_n54:Landroid/widget/TextView;

    if-eqz v2, :cond_1b

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    :cond_1b
    :goto_7
    iget v2, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->connectingIndex:I

    if-ne v2, v1, :cond_20

    const/4 v2, 0x0

    .line 303
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 304
    invoke-virtual {v0, v9}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->startAnimation(Landroid/widget/ImageView;)V

    .line 306
    invoke-virtual {v7, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v8, :cond_1c

    .line 307
    invoke-virtual {v8, v12}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_1c
    invoke-static {v4}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v13, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1d
    if-eqz v14, :cond_1e

    .line 309
    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    .line 310
    :cond_1e
    iget-object v2, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->device_name_id_connected_n54:Landroid/widget/TextView;

    if-eqz v2, :cond_1f

    invoke-virtual {v2, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    :cond_1f
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 315
    :cond_20
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f08176f

    .line 316
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    :goto_8
    iget v2, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->connectingIndex:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_21

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->stopAnimation()V

    .line 323
    :cond_21
    iget v2, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->deleteIndex:I

    if-ne v2, v1, :cond_26

    const/4 v1, 0x0

    .line 324
    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-eqz v8, :cond_22

    .line 325
    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_22
    invoke-static {v4}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResStr(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v13, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_23
    if-eqz v14, :cond_24

    .line 327
    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    .line 328
    :cond_24
    iget-object v1, v0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->device_name_id_connected_n54:Landroid/widget/TextView;

    if-eqz v1, :cond_25

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    :cond_25
    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 331
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f090214

    .line 333
    invoke-virtual {v11, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    const v1, 0x7f0901f2

    .line 334
    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->setNextFocusLeftId(I)V

    if-eqz v8, :cond_26

    .line 335
    invoke-virtual {v8, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    :cond_26
    return-object v3
.end method

.method public setBluetoothProfile(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->bluetoothProfile:I

    return-void
.end method

.method public setConnectingIndex(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->connectingIndex:I

    return-void
.end method

.method public setDeleteIndex(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->deleteIndex:I

    return-void
.end method

.method public setDevList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hzbhd/bluetooth/bean/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->devList:Ljava/util/List;

    return-void
.end method

.method public setListener(Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->listener:Lcom/hzbhd/bluetooth/paired/PairListAdapter$PairListAdapterListener;

    return-void
.end method

.method public setSelectIndex(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->selectIndex:I

    .line 133
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public startAnimation(Landroid/widget/ImageView;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 344
    iget-object p1, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/hzbhd/bluetooth/paired/PairListAdapter;->mLoadAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    return-void
.end method
