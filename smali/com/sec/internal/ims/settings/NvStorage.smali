.class public Lcom/sec/internal/ims/settings/NvStorage;
.super Ljava/lang/Object;
.source "NvStorage.java"


# static fields
.field private static final DEFAULT_NAME:Ljava/lang/String; = "DEFAULT"

.field public static final ID_OMADM:Ljava/lang/String; = "omadm"

.field private static final IMS_NV_STORAGE_XML:Ljava/lang/String; = "/efs/sec_efs/ims_nv_"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final OMADM_PREFIX:Ljava/lang/String; = "omadm/./3GPP_IMS/"

.field protected static final ROOT_ELEMENT:Ljava/lang/String; = "NV_STORAGE"

.field private static final SILENT_REDIAL_PATH:Ljava/lang/String; = "/efs/sec_efs/silent_redial"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mDoc:Lorg/w3c/dom/Document;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mLock:Ljava/lang/Object;

.field private mName:Ljava/lang/String;

.field protected mNvFile:Ljava/io/File;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/sec/internal/ims/settings/NvStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mLock:Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    .line 79
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x64

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mContext:Landroid/content/Context;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mName:Ljava/lang/String;

    .line 82
    iput p3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    .line 84
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/settings/NvStorage;->setNvFile(Ljava/lang/String;)Z

    .line 85
    return-void
.end method

.method private declared-synchronized create(Ljava/lang/String;)V
    .locals 8
    .param p1, "element"    # Ljava/lang/String;

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create: table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initDoc()V

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    if-nez v0, :cond_0

    .line 199
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " open failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 203
    .end local p0    # "this":Lcom/sec/internal/ims/settings/NvStorage;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 204
    .local v0, "targetNode":Lorg/w3c/dom/NodeList;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 206
    monitor-exit p0

    return-void

    .line 209
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    const-string v2, "NV_STORAGE"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 210
    .local v1, "root":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v2, p1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 215
    .local v2, "newel":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    :try_start_3
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    .line 219
    .local v3, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v4

    .line 220
    .local v4, "transformer":Ljavax/xml/transform/Transformer;
    const-string v5, "indent"

    const-string/jumbo v6, "yes"

    invoke-virtual {v4, v5, v6}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    iget-object v6, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {v5, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 222
    .local v5, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    iget-object v7, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 224
    .local v6, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v4, v5, v6}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    .end local v3    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v4    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v5    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v6    # "result":Ljavax/xml/transform/stream/StreamResult;
    goto :goto_0

    .line 225
    :catch_0
    move-exception v3

    .line 226
    .local v3, "e":Ljavax/xml/transform/TransformerException;
    :try_start_4
    sget-object v4, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create() TransformerException exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    .end local v3    # "e":Ljavax/xml/transform/TransformerException;
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    .end local v2    # "newel":Lorg/w3c/dom/Node;
    :cond_3
    :goto_1
    :try_start_5
    sget-object v2, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "root is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    .line 195
    .end local v0    # "targetNode":Lorg/w3c/dom/NodeList;
    .end local v1    # "root":Lorg/w3c/dom/NodeList;
    .end local p1    # "element":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 96
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string v0, "DEFAULT"

    return-object v0

    .line 99
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method private declared-synchronized initDoc()V
    .locals 5

    monitor-enter p0

    .line 142
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 143
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 144
    .local v2, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    iget-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-nez v3, :cond_0

    .line 147
    monitor-exit p0

    return-void

    .line 150
    .end local p0    # "this":Lcom/sec/internal/ims/settings/NvStorage;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    if-nez v3, :cond_1

    .line 151
    sget-object v3, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    const-string v4, "mDoc.getDocumentElement(): null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/NvStorage;->initNvStorage(Z)V

    goto :goto_0

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Element;->normalize()V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    .end local v1    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_0
    goto :goto_1

    .line 141
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dBuilder.parse IOException exception, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 158
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 159
    .local v1, "e":Lorg/xml/sax/SAXException;
    sget-object v2, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dBuilder.parse SAXException exception, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/NvStorage;->initNvStorage(Z)V

    .end local v1    # "e":Lorg/xml/sax/SAXException;
    goto :goto_0

    .line 156
    :catch_2
    move-exception v0

    .line 157
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    const-string v2, "dbFactory exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    nop

    .line 164
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    monitor-exit p0

    return-void

    .line 141
    :goto_2
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initElements()V
    .locals 1

    monitor-enter p0

    .line 137
    :try_start_0
    const-string v0, "omadm"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/NvStorage;->create(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 136
    .end local p0    # "this":Lcom/sec/internal/ims/settings/NvStorage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initNvStorage()V
    .locals 1

    monitor-enter p0

    .line 167
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/settings/NvStorage;->initNvStorage(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 166
    .end local p0    # "this":Lcom/sec/internal/ims/settings/NvStorage;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized initNvStorage(Z)V
    .locals 9
    .param p1, "forced"    # Z

    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initNvStorage(): isForce: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    .line 173
    .local v0, "nvStorage":Ljava/io/File;
    if-nez p1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 175
    .end local p0    # "this":Lcom/sec/internal/ims/settings/NvStorage;
    :cond_0
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 176
    .local v1, "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 177
    .local v2, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    .line 178
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v4, "NV_STORAGE"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 180
    .local v4, "rootElement":Lorg/w3c/dom/Element;
    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 181
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v5

    .line 182
    .local v5, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v6

    .line 183
    .local v6, "transformer":Ljavax/xml/transform/Transformer;
    const-string v7, "indent"

    const-string/jumbo v8, "yes"

    invoke-virtual {v6, v7, v8}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v7, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 185
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v8, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v8, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 186
    .local v8, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v6, v7, v8}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v1    # "docFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "rootElement":Lorg/w3c/dom/Element;
    .end local v5    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v6    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v7    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v8    # "result":Ljavax/xml/transform/stream/StreamResult;
    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Ljavax/xml/transform/TransformerException;
    :try_start_2
    sget-object v2, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initNvStorage TransformerException exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v1    # "e":Ljavax/xml/transform/TransformerException;
    :catch_1
    move-exception v1

    .line 188
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    sget-object v2, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "initNvStorage exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 191
    nop

    .line 193
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 170
    .end local v0    # "nvStorage":Ljava/io/File;
    .end local p1    # "forced":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic lambda$dump$0(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "k"    # Ljava/lang/String;
    .param p1, "v"    # Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dump$1(Ljava/util/Map;)Ljava/lang/Object;
    .locals 2
    .param p0, "nv"    # Ljava/util/Map;

    .line 417
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 418
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Last value of NV OMADM:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 420
    sget-object v0, Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$ppLgFsgRT8hdRzaEUIEiYAsXLJQ;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$ppLgFsgRT8hdRzaEUIEiYAsXLJQ;

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 421
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 422
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 423
    const/4 v0, 0x0

    return-object v0
.end method

.method private readFromStorage(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v0, "cv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initDoc()V

    .line 274
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 275
    sget-object v1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " open failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-object v2

    .line 278
    :cond_0
    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 279
    .local v1, "nList":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_5

    .line 280
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 281
    .local v3, "nNode":Lorg/w3c/dom/Node;
    if-nez v3, :cond_1

    .line 282
    sget-object v4, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "query("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): nNode is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initElements()V

    .line 284
    return-object v2

    .line 286
    :cond_1
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 288
    .local v2, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v4, 0x0

    .line 289
    .local v4, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    .line 290
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_2

    .line 291
    aget-object v6, p2, v5

    const-string v7, "omadm/./3GPP_IMS/"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v5

    .line 290
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 293
    .end local v5    # "i":I
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v4, v5

    .line 295
    :cond_3
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 296
    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 297
    .local v6, "attr":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 298
    goto :goto_2

    .line 300
    :cond_4
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .end local v6    # "attr":Lorg/w3c/dom/Node;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    .end local v2    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v3    # "nNode":Lorg/w3c/dom/Node;
    .end local v4    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "j":I
    :cond_5
    return-object v0
.end method

.method private save(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 11
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "cv"    # Landroid/content/ContentValues;

    .line 354
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initDoc()V

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    if-nez v0, :cond_0

    .line 356
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " open failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void

    .line 359
    :cond_0
    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 360
    .local v0, "targetChild":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 361
    .local v1, "targetElement":Lorg/w3c/dom/Element;
    if-nez v1, :cond_1

    .line 362
    sget-object v2, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): targetElement is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initElements()V

    .line 364
    return-void

    .line 368
    :cond_1
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ""

    const-string v5, "omadm/./3GPP_IMS/"

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 369
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "save: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 371
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string/jumbo v5, "silent_redial"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 373
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/settings/NvStorage;->writeSilentRedial(Ljava/lang/String;)V

    .line 375
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    goto :goto_0

    .line 378
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    .line 379
    .local v2, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    .line 380
    .local v3, "transformer":Ljavax/xml/transform/Transformer;
    const-string v6, "indent"

    const-string/jumbo v7, "yes"

    invoke-virtual {v3, v6, v7}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    iget-object v7, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {v6, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 382
    .local v6, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    iget-object v8, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 384
    .local v7, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v3, v6, v7}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v2    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v3    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v6    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v7    # "result":Ljavax/xml/transform/stream/StreamResult;
    goto :goto_1

    .line 385
    :catch_0
    move-exception v2

    .line 386
    .local v2, "e":Ljavax/xml/transform/TransformerException;
    sget-object v3, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reset() TransformerException exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    .end local v2    # "e":Ljavax/xml/transform/TransformerException;
    :goto_1
    const-string v2, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/"

    .line 390
    .local v2, "uri":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 391
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 392
    .local v7, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/sec/internal/ims/settings/NvStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    .line 393
    invoke-static {v9, v10}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    .line 392
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 394
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_2

    .line 395
    .end local v7    # "key":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mName:Ljava/lang/String;

    goto :goto_0

    .line 91
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mName:Ljava/lang/String;

    .line 93
    :goto_0
    return-void
.end method

.method private declared-synchronized writeSilentRedial(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    monitor-enter p0

    .line 400
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    const-string v1, "/efs/sec_efs/silent_redial"

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    .local v0, "writer":Ljava/io/PrintWriter;
    goto :goto_0

    .line 399
    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local p0    # "this":Lcom/sec/internal/ims/settings/NvStorage;
    .end local p1    # "value":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 401
    .restart local p1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 403
    const/4 v1, 0x0

    move-object v0, v1

    .line 406
    .local v0, "writer":Ljava/io/PrintWriter;
    :goto_0
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :cond_0
    monitor-exit p0

    return-void

    .line 399
    .end local v0    # "writer":Ljava/io/PrintWriter;
    .end local p1    # "value":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Close : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    .line 132
    iput-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    .line 133
    monitor-exit v0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public delete(Ljava/lang/String;)I
    .locals 10
    .param p1, "element"    # Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete: table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initDoc()V

    .line 315
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 316
    sget-object v1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " open failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    monitor-exit v0

    return v2

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v1, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 320
    .local v1, "targetChild":Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_1

    .line 321
    sget-object v3, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): targetChild is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initElements()V

    .line 323
    monitor-exit v0

    return v2

    .line 326
    :cond_1
    const/4 v3, 0x0

    .line 327
    .local v3, "numDeleteAttributes":I
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 328
    .local v2, "targetElement":Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 329
    .local v4, "attributes":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    .local v5, "j":I
    :goto_0
    if-lez v5, :cond_2

    .line 330
    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 331
    .local v6, "attr":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    nop

    .end local v6    # "attr":Lorg/w3c/dom/Node;
    add-int/lit8 v3, v3, 0x1

    .line 333
    goto :goto_0

    .line 336
    .end local v5    # "j":I
    :cond_2
    :try_start_1
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v5

    .line 337
    .local v5, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v5}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v6

    .line 338
    .local v6, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    iget-object v8, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    invoke-direct {v7, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 339
    .local v7, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v8, Ljavax/xml/transform/stream/StreamResult;

    iget-object v9, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 341
    .local v8, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v6, v7, v8}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .end local v5    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v6    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v7    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v8    # "result":Ljavax/xml/transform/stream/StreamResult;
    goto :goto_1

    .line 342
    :catch_0
    move-exception v5

    .line 343
    .local v5, "e":Ljavax/xml/transform/TransformerException;
    :try_start_2
    sget-object v6, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete() TransformerException exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    .end local v5    # "e":Ljavax/xml/transform/TransformerException;
    :goto_1
    monitor-exit v0

    return v3

    .line 347
    .end local v1    # "targetChild":Lorg/w3c/dom/NodeList;
    .end local v2    # "targetElement":Lorg/w3c/dom/Element;
    .end local v3    # "numDeleteAttributes":I
    .end local v4    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dump()V
    .locals 3

    .line 413
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Dump of NvStorage:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NV File: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 416
    const-string v0, "omadm"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/settings/NvStorage;->readFromStorage(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$Rz9INm4C9k7RguX0AjnIQzDQEU4;->INSTANCE:Lcom/sec/internal/ims/settings/-$$Lambda$NvStorage$Rz9INm4C9k7RguX0AjnIQzDQEU4;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 425
    return-void
.end method

.method public insert(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 231
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/NvStorage;->save(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 235
    monitor-exit v0

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/NvStorage;->readFromStorage(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 246
    .local v1, "cv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "SMS_FORMAT"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const-string v2, "SMS_FORMAT"

    const-string v3, "3GPP"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v2, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    const-string v3, "VZW CDMA-less case! Return fake SMS_FORAMT(3GPP) by force"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    const/4 v2, 0x0

    .line 252
    .local v2, "cursor":Landroid/database/MatrixCursor;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 253
    const-string v3, "PATH"

    const-string v4, "VALUE"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "columnNames":[Ljava/lang/String;
    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    .line 258
    .local v4, "columnValues":[Ljava/lang/String;
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v2, v5

    .line 260
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 261
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "omadm/./3GPP_IMS/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 262
    const/4 v7, 0x1

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v4, v7

    .line 263
    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 264
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_0

    .line 267
    .end local v3    # "columnNames":[Ljava/lang/String;
    .end local v4    # "columnValues":[Ljava/lang/String;
    :cond_1
    monitor-exit v0

    return-object v2

    .line 268
    .end local v1    # "cv":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized setNvFile(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/NvStorage;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "same nv file. do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 109
    .end local p0    # "this":Lcom/sec/internal/ims/settings/NvStorage;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loading new nv file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/NvStorage;->setName(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mDoc:Lorg/w3c/dom/Document;

    .line 112
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/efs/sec_efs/ims_nv_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    .line 113
    sget-object v0, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNvFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initNvStorage()V

    .line 116
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initDoc()V

    .line 117
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/NvStorage;->initElements()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage;->mNvFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b0

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 121
    const-string v0, "/efs/sec_efs/silent_redial"

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/system/ErrnoException;
    :try_start_3
    sget-object v1, Lcom/sec/internal/ims/settings/NvStorage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod error!! : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    .end local v0    # "e":Landroid/system/ErrnoException;
    :goto_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 103
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
