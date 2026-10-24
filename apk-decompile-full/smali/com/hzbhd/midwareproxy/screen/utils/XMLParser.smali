.class public Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;
.super Ljava/lang/Object;
.source "XMLParser.java"


# static fields
.field static final TAG:Ljava/lang/String;

.field static mScreen:Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;


# instance fields
.field XMLPath:Ljava/lang/String;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/data/bhd/android_config.xml"

    .line 36
    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->XMLPath:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, v0}, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->init(Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;
    .locals 3

    const-class v0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->TAG:Ljava/lang/String;

    const-string v2, "XMLParser getInstance: "

    invoke-static {v1, v2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->mScreen:Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;

    invoke-direct {v1}, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;-><init>()V

    sput-object v1, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->mScreen:Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;

    .line 43
    :cond_0
    sget-object v1, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->mScreen:Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static selectNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "eee11"

    .line 225
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->getInstance()Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->getDomElement(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p0

    .line 227
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    .line 228
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 230
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 231
    invoke-interface {v1, p0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-interface {v1, p0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 233
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 295
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 296
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;

    .line 297
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->getBooleanValue()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getDomDocumentUpdate(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 5

    const-string v0, "Error: "

    .line 166
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 169
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 171
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-direct {v3}, Lorg/xml/sax/InputSource;-><init>()V

    .line 172
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 173
    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_1
    move-exception p1

    .line 178
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_2
    move-exception p1

    .line 175
    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public getDomElement(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 3

    const-string v0, "Error: "

    .line 142
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x0

    .line 145
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 149
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_1
    move-exception p1

    .line 154
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_2
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public final getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 197
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 200
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 201
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 199
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 6

    .line 270
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->list:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 272
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;

    .line 274
    sget-object v3, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 276
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->getIntValue()I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->list:Ljava/util/List;

    const-string v1, ""

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 284
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;

    .line 286
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    invoke-virtual {v2}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;->getStringValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 218
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 p2, 0x0

    .line 219
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init(Ljava/lang/String;)I
    .locals 7

    .line 53
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->list:Ljava/util/List;

    const/4 v0, 0x0

    .line 56
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const-string/jumbo v2, "utf-8"

    .line 65
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 68
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "person.id"

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ,xmlPullParser.getName()\uff1a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "name"

    .line 80
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    .line 81
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 84
    iget-object v5, p0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->list:Ljava/util/List;

    new-instance v6, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;

    invoke-direct {v6, v2, v3, v4}, Lcom/hzbhd/midwareproxy/setting/bean/AndroidConfigAtribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 94
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    .line 98
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    :cond_2
    :goto_3
    sget-object p1, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/screen/utils/XMLParser;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :goto_4
    if-eqz v0, :cond_3

    .line 98
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    :cond_3
    :goto_5
    throw p1
.end method
