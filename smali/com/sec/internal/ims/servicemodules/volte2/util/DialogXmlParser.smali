.class public Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;
.super Ljava/lang/Object;
.source "DialogXmlParser.java"


# static fields
.field private static final CMC_TYPE_NONE:I = 0x0

.field private static final CMC_TYPE_PRIMARY:I = 0x1

.field private static final CMC_TYPE_SECONDARY:I = 0x2

.field private static final CMC_WIFI_HS_TYPE_PRIMARY:I = 0x5

.field private static final CMC_WIFI_HS_TYPE_SECONDARY:I = 0x6

.field private static final CMC_WIFI_P2P_TYPE_PRIMARY:I = 0x7

.field private static final CMC_WIFI_P2P_TYPE_SECONDARY:I = 0x8

.field private static final CMC_WIFI_TYPE_PRIMARY:I = 0x3

.field private static final CMC_WIFI_TYPE_SECONDARY:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;


# instance fields
.field private mXPath:Ljavax/xml/xpath/XPath;

.field private mXPathCallId:Ljavax/xml/xpath/XPathExpression;

.field private mXPathCode:Ljavax/xml/xpath/XPathExpression;

.field private mXPathDialog:Ljavax/xml/xpath/XPathExpression;

.field private mXPathDialogInfo:Ljavax/xml/xpath/XPathExpression;

.field private mXPathDirection:Ljavax/xml/xpath/XPathExpression;

.field private mXPathEntity:Ljavax/xml/xpath/XPathExpression;

.field private mXPathEvent:Ljavax/xml/xpath/XPathExpression;

.field private mXPathExclusive:Ljavax/xml/xpath/XPathExpression;

.field private mXPathId:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalDisplay:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalDisplayName:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalIdentity:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalTag:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalTarget:Ljavax/xml/xpath/XPathExpression;

.field private mXPathLocalUri:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaAttributes:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaPortZero:Ljavax/xml/xpath/XPathExpression;

.field private mXPathMediaType:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteDisplay:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteDisplayName:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteIdentity:Ljavax/xml/xpath/XPathExpression;

.field private mXPathRemoteTag:Ljavax/xml/xpath/XPathExpression;

.field private mXPathSessionDesc:Ljavax/xml/xpath/XPathExpression;

.field private mXPathSipInstance:Ljavax/xml/xpath/XPathExpression;

.field private mXPathSipRendering:Ljavax/xml/xpath/XPathExpression;

.field private mXPathState:Ljavax/xml/xpath/XPathExpression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->sInstance:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->init()V

    .line 152
    return-void
.end method

.method private convertDialogCallState(Ljava/lang/String;)I
    .locals 2
    .param p1, "sipRendering"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 238
    const-string v0, "no"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 239
    const/4 v0, 0x2

    return v0

    .line 242
    :cond_0
    return v1
.end method

.method private convertDialogCallType(Ljava/lang/String;)I
    .locals 2
    .param p1, "mediaType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 216
    const-string/jumbo v0, "video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 217
    const/4 v0, 0x2

    return v0

    .line 220
    :cond_0
    return v1
.end method

.method private convertDialogDirection(Ljava/lang/String;)I
    .locals 4
    .param p1, "direction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 155
    const-string v0, "initiator"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 156
    return v1

    .line 157
    :cond_0
    const-string/jumbo v0, "recipient"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const/4 v0, 0x1

    return v0

    .line 160
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private convertDialogMediaDirection(Ljava/lang/String;)I
    .locals 2
    .param p1, "mediaDirection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 224
    const-string/jumbo v0, "sendrecv"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 225
    const/4 v0, 0x4

    return v0

    .line 226
    :cond_0
    const-string/jumbo v0, "recvonly"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 227
    const/4 v0, 0x3

    return v0

    .line 228
    :cond_1
    const-string/jumbo v0, "sendonly"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 229
    const/4 v0, 0x2

    return v0

    .line 230
    :cond_2
    const-string v0, "inactive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 231
    return v1

    .line 234
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private convertDialogState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "direction"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertDialogState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 169
    .local v0, "codeValue":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v2, "early"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_2

    :sswitch_1
    const-string v2, "confirmed"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_2

    :sswitch_2
    const-string/jumbo v2, "trying"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_2

    :sswitch_3
    const-string/jumbo v2, "terminated"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_2

    :goto_1
    move v2, v3

    :goto_2
    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_2

    goto :goto_3

    .line 186
    :cond_2
    const-string/jumbo v1, "rejected"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1e6

    if-ne v0, v1, :cond_3

    .line 187
    return v4

    .line 189
    :cond_3
    return v5

    .line 184
    :cond_4
    return v6

    .line 178
    :cond_5
    if-ne p1, v6, :cond_7

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_7

    .line 179
    return v1

    .line 173
    :cond_6
    if-nez p1, :cond_7

    .line 174
    const/4 v1, 0x4

    return v1

    .line 195
    :cond_7
    :goto_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v2, "convertDialogState(): ignoring"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x4e02f1dd -> :sswitch_3
        -0x338ec7b9 -> :sswitch_2
        -0x2fedbca1 -> :sswitch_1
        0x5bd1763 -> :sswitch_0
    .end sparse-switch
.end method

.method private getDeviceIdFromSipInstanceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "sipInstanceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 207
    const-string/jumbo v0, "urn:gsma:imei:([0-9-]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 208
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[^0-9]"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 212
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid instance id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public static getInstance()Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->sInstance:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->sInstance:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    .line 41
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->sInstance:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    return-object v0
.end method

.method private init()V
    .locals 3

    .line 80
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    .line 81
    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;)V

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "/dins:dialog-info"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialogInfo:Ljavax/xml/xpath/XPathExpression;

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@entity"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEntity:Ljavax/xml/xpath/XPathExpression;

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:dialog"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialog:Ljavax/xml/xpath/XPathExpression;

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@id"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathId:Ljavax/xml/xpath/XPathExpression;

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@call-id"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallId:Ljavax/xml/xpath/XPathExpression;

    .line 113
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@local-tag"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTag:Ljavax/xml/xpath/XPathExpression;

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@remote-tag"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteTag:Ljavax/xml/xpath/XPathExpression;

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "@direction"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDirection:Ljavax/xml/xpath/XPathExpression;

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string/jumbo v1, "sa:exclusive"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathExclusive:Ljavax/xml/xpath/XPathExpression;

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:state"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathState:Ljavax/xml/xpath/XPathExpression;

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:state/@event"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEvent:Ljavax/xml/xpath/XPathExpression;

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:state/@code"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCode:Ljavax/xml/xpath/XPathExpression;

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:identity"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalIdentity:Ljavax/xml/xpath/XPathExpression;

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:identity/@display-name"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplayName:Ljavax/xml/xpath/XPathExpression;

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:identity/@display"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplay:Ljavax/xml/xpath/XPathExpression;

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target/@uri"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalUri:Ljavax/xml/xpath/XPathExpression;

    .line 128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTarget:Ljavax/xml/xpath/XPathExpression;

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:session-description"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSessionDesc:Ljavax/xml/xpath/XPathExpression;

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target/dins:param[@pname=\'+sip.instance\']/@pval"

    .line 132
    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipInstance:Ljavax/xml/xpath/XPathExpression;

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:target/dins:param[@pname=\'+sip.rendering\']/@pval"

    .line 135
    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipRendering:Ljavax/xml/xpath/XPathExpression;

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:local/dins:mediaAttributes"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaAttributes:Ljavax/xml/xpath/XPathExpression;

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:mediaType"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaType:Ljavax/xml/xpath/XPathExpression;

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:mediaDirection"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:port0"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaPortZero:Ljavax/xml/xpath/XPathExpression;

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:remote/dins:identity"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteIdentity:Ljavax/xml/xpath/XPathExpression;

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:remote/dins:identity/@display-name"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplayName:Ljavax/xml/xpath/XPathExpression;

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "dins:remote/dins:identity/@display"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplay:Ljavax/xml/xpath/XPathExpression;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljavax/xml/xpath/XPathExpressionException;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v2, "XPath compile failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    .end local v0    # "e":Ljavax/xml/xpath/XPathExpressionException;
    :goto_0
    return-void
.end method


# virtual methods
.method public parseDialogInfoXml(Ljava/lang/String;)Lcom/sec/ims/DialogEvent;
    .locals 1
    .param p1, "dialogInfoXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->parseDialogInfoXml(Ljava/lang/String;I)Lcom/sec/ims/DialogEvent;

    move-result-object v0

    return-object v0
.end method

.method public parseDialogInfoXml(Ljava/lang/String;I)Lcom/sec/ims/DialogEvent;
    .locals 54
    .param p1, "dialogInfoXml"    # Ljava/lang/String;
    .param p2, "cmcType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 250
    move-object/from16 v1, p0

    move/from16 v2, p2

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    move-object/from16 v4, p1

    invoke-direct {v3, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v3, v0

    .line 252
    .local v3, "xmlSource":Lorg/xml/sax/InputSource;
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialogInfo:Ljavax/xml/xpath/XPathExpression;

    sget-object v5, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v3, v5}, Ljavax/xml/xpath/XPathExpression;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/w3c/dom/Node;

    .line 255
    .local v5, "dialogInfoNode":Lorg/w3c/dom/Node;
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEntity:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v0, v5}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "entity":Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    .line 257
    .local v7, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "msisdn":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 259
    invoke-virtual {v7}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 258
    :cond_0
    move-object v8, v0

    .line 262
    .end local v0    # "msisdn":Ljava/lang/String;
    .local v8, "msisdn":Ljava/lang/String;
    :goto_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDialog:Ljavax/xml/xpath/XPathExpression;

    sget-object v9, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v5, v9}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/w3c/dom/NodeList;

    .line 264
    .local v9, "dialogs":Lorg/w3c/dom/NodeList;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 266
    .local v10, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_1
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v11, v0, :cond_15

    .line 267
    invoke-interface {v9, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 269
    .local v12, "n":Lorg/w3c/dom/Node;
    const/4 v13, 0x0

    .local v13, "state":I
    const/4 v14, 0x0

    .local v14, "direction":I
    const/4 v15, 0x0

    .local v15, "callType":I
    const/16 v16, 0x0

    .line 270
    .local v16, "callState":I
    const/16 v17, 0x0

    .local v17, "audioDirection":I
    const/16 v18, 0x0

    .line 271
    .local v18, "videoDirection":I
    const-string v19, ""

    .local v19, "dialogId":Ljava/lang/String;
    const-string v20, ""

    .local v20, "deviceId":Ljava/lang/String;
    const-string v21, ""

    .local v21, "sipCallId":Ljava/lang/String;
    const-string v22, ""

    .line 272
    .local v22, "sipLocalTag":Ljava/lang/String;
    const-string v23, ""

    .local v23, "sipRemoteTag":Ljava/lang/String;
    const-string v24, ""

    .local v24, "localUri":Ljava/lang/String;
    const-string v25, ""

    .local v25, "remoteUri":Ljava/lang/String;
    const-string v26, ""

    .line 273
    .local v26, "localDispName":Ljava/lang/String;
    const-string v27, ""

    .local v27, "remoteDispName":Ljava/lang/String;
    const-string v28, ""

    .local v28, "sipRendering":Ljava/lang/String;
    const-string v29, ""

    .line 274
    .local v29, "sessionDesc":Ljava/lang/String;
    const/16 v30, 0x0

    .local v30, "isExclusive":Z
    const/16 v31, 0x0

    .line 277
    .local v31, "isVideoPortZero":Z
    :try_start_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathDirection:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v0, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogDirection(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 278
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathState:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v0, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_9

    move-object/from16 v32, v3

    .end local v3    # "xmlSource":Lorg/xml/sax/InputSource;
    .local v32, "xmlSource":Lorg/xml/sax/InputSource;
    :try_start_1
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathEvent:Ljavax/xml/xpath/XPathExpression;

    .line 279
    invoke-interface {v3, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCode:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v4, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 278
    invoke-direct {v1, v14, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v13, v0

    .line 281
    if-gez v13, :cond_1

    .line 282
    move-object/from16 v34, v5

    goto/16 :goto_c

    .line 285
    :cond_1
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaAttributes:Ljavax/xml/xpath/XPathExpression;

    sget-object v3, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v0, v12, v3}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 288
    .local v0, "mediaAttributes":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lez v3, :cond_8

    .line 289
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 290
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 291
    .local v4, "media":Lorg/w3c/dom/Node;
    move-object/from16 v33, v0

    .end local v0    # "mediaAttributes":Lorg/w3c/dom/NodeList;
    .local v33, "mediaAttributes":Lorg/w3c/dom/NodeList;
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaType:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v0, v4}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogCallType(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_8

    .line 293
    .local v0, "tmpCallType":I
    if-nez v15, :cond_2

    .line 294
    move v15, v0

    move-object/from16 v34, v5

    goto :goto_3

    .line 295
    :cond_2
    move-object/from16 v34, v5

    const/4 v5, 0x2

    .end local v5    # "dialogInfoNode":Lorg/w3c/dom/Node;
    .local v34, "dialogInfoNode":Lorg/w3c/dom/Node;
    if-eq v15, v5, :cond_3

    if-ne v0, v5, :cond_3

    .line 297
    move v5, v0

    move v15, v5

    .line 300
    :cond_3
    :goto_3
    const/4 v5, 0x1

    if-eq v0, v5, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    .line 314
    :try_start_2
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 315
    invoke-interface {v5, v4}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-direct {v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogMediaDirection(Ljava/lang/String;)I

    move-result v5

    move/from16 v17, v5

    .end local v17    # "audioDirection":I
    .local v5, "audioDirection":I
    goto :goto_5

    .line 302
    .end local v5    # "audioDirection":I
    .restart local v17    # "audioDirection":I
    :cond_4
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 303
    invoke-interface {v5, v4}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 302
    invoke-direct {v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogMediaDirection(Ljava/lang/String;)I

    move-result v5

    move/from16 v18, v5

    .line 304
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaPortZero:Ljavax/xml/xpath/XPathExpression;

    move/from16 v35, v0

    .end local v0    # "tmpCallType":I
    .local v35, "tmpCallType":I
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {v5, v4, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    .line 305
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 306
    .end local v31    # "isVideoPortZero":Z
    .local v0, "isVideoPortZero":Z
    :goto_4
    move/from16 v31, v0

    goto :goto_5

    .line 309
    .end local v35    # "tmpCallType":I
    .local v0, "tmpCallType":I
    .restart local v31    # "isVideoPortZero":Z
    :cond_6
    move/from16 v35, v0

    .end local v0    # "tmpCallType":I
    .restart local v35    # "tmpCallType":I
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathMediaDirection:Ljavax/xml/xpath/XPathExpression;

    .line 310
    invoke-interface {v0, v4}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogMediaDirection(Ljava/lang/String;)I

    move-result v0

    .line 311
    .end local v17    # "audioDirection":I
    .local v0, "audioDirection":I
    move/from16 v17, v0

    .line 289
    .end local v0    # "audioDirection":I
    .end local v4    # "media":Lorg/w3c/dom/Node;
    .end local v35    # "tmpCallType":I
    .restart local v17    # "audioDirection":I
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v33

    move-object/from16 v5, v34

    goto :goto_2

    .end local v33    # "mediaAttributes":Lorg/w3c/dom/NodeList;
    .end local v34    # "dialogInfoNode":Lorg/w3c/dom/Node;
    .local v0, "mediaAttributes":Lorg/w3c/dom/NodeList;
    .local v5, "dialogInfoNode":Lorg/w3c/dom/Node;
    :cond_7
    move-object/from16 v33, v0

    move-object/from16 v34, v5

    .end local v0    # "mediaAttributes":Lorg/w3c/dom/NodeList;
    .end local v5    # "dialogInfoNode":Lorg/w3c/dom/Node;
    .restart local v33    # "mediaAttributes":Lorg/w3c/dom/NodeList;
    .restart local v34    # "dialogInfoNode":Lorg/w3c/dom/Node;
    goto :goto_6

    .line 288
    .end local v3    # "j":I
    .end local v33    # "mediaAttributes":Lorg/w3c/dom/NodeList;
    .end local v34    # "dialogInfoNode":Lorg/w3c/dom/Node;
    .restart local v0    # "mediaAttributes":Lorg/w3c/dom/NodeList;
    .restart local v5    # "dialogInfoNode":Lorg/w3c/dom/Node;
    :cond_8
    move-object/from16 v33, v0

    move-object/from16 v34, v5

    .line 321
    .end local v0    # "mediaAttributes":Lorg/w3c/dom/NodeList;
    .end local v5    # "dialogInfoNode":Lorg/w3c/dom/Node;
    .restart local v33    # "mediaAttributes":Lorg/w3c/dom/NodeList;
    .restart local v34    # "dialogInfoNode":Lorg/w3c/dom/Node;
    :goto_6
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathId:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v0, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    .line 322
    const/16 v0, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_9

    if-eq v2, v3, :cond_9

    if-ne v2, v0, :cond_a

    .line 325
    :cond_9
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 326
    const/16 v4, 0x1f

    .line 327
    .local v4, "primeHash":I
    const/4 v5, 0x1

    .line 328
    .local v5, "fixedId":I
    mul-int/lit8 v35, v5, 0x1f

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v36

    const v37, 0x7fffffff

    and-int v36, v36, v37

    add-int v35, v35, v36

    .line 329
    .end local v5    # "fixedId":I
    .local v35, "fixedId":I
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    .line 331
    .end local v4    # "primeHash":I
    .end local v35    # "fixedId":I
    :cond_a
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathCallId:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v4, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v4

    .line 332
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTag:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v4, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v22, v4

    .line 333
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteTag:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v4, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v4

    .line 335
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalIdentity:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v4, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v24, v4

    .line 336
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteIdentity:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v4, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v25, v4

    .line 337
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplay:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v4, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v26, v4

    .line 338
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSessionDesc:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v4, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_7

    .line 340
    .end local v29    # "sessionDesc":Ljava/lang/String;
    .local v4, "sessionDesc":Ljava/lang/String;
    :try_start_3
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v0, 0x1

    if-ne v5, v0, :cond_b

    .line 341
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalDisplayName:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v0, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v26, v0

    .line 344
    :cond_b
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplay:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v0, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v0

    .line 346
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_c

    .line 347
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathRemoteDisplayName:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v0, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v27, v0

    .line 350
    :cond_c
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipRendering:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v0, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v5, v0

    .line 352
    .end local v28    # "sipRendering":Ljava/lang/String;
    .local v5, "sipRendering":Ljava/lang/String;
    :try_start_4
    invoke-direct {v1, v5}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->convertDialogCallState(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_5

    move/from16 v16, v0

    .line 354
    :try_start_5
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathExclusive:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v0, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move/from16 v30, v0

    .line 357
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathSipInstance:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v0, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "sipInstance":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28
    :try_end_5
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_5} :catch_4

    if-nez v28, :cond_d

    .line 359
    :try_start_6
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->getDeviceIdFromSipInstanceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_6 .. :try_end_6} :catch_5

    move-object/from16 v20, v28

    move/from16 v3, v17

    goto :goto_7

    .line 361
    :cond_d
    :try_start_7
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->mXPathLocalTarget:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v3, v12}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catch Ljava/text/ParseException; {:try_start_7 .. :try_end_7} :catch_4

    .line 364
    .end local v20    # "deviceId":Ljava/lang/String;
    .local v3, "deviceId":Ljava/lang/String;
    if-nez v17, :cond_e

    .line 365
    const/16 v17, 0x4

    .line 367
    :cond_e
    if-nez v15, :cond_f

    .line 368
    const/4 v15, 0x1

    move-object/from16 v20, v3

    move/from16 v3, v17

    goto :goto_7

    .line 367
    :cond_f
    move-object/from16 v20, v3

    move/from16 v3, v17

    .line 372
    .end local v17    # "audioDirection":I
    .local v3, "audioDirection":I
    .restart local v20    # "deviceId":Ljava/lang/String;
    :goto_7
    move-object/from16 v28, v0

    const/4 v0, 0x2

    .end local v0    # "sipInstance":Ljava/lang/String;
    .local v28, "sipInstance":Ljava/lang/String;
    if-eq v2, v0, :cond_10

    const/4 v0, 0x4

    if-eq v2, v0, :cond_10

    const/16 v0, 0x8

    if-ne v2, v0, :cond_13

    .line 375
    :cond_10
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_8
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_8} :catch_3

    if-lez v0, :cond_13

    .line 376
    :try_start_9
    const-string v0, "*31#"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "#31#"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 377
    :cond_11
    const/4 v0, 0x4

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17
    :try_end_9
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_9} :catch_1

    move-object/from16 v29, v17

    .line 378
    .end local v4    # "sessionDesc":Ljava/lang/String;
    .restart local v29    # "sessionDesc":Ljava/lang/String;
    :try_start_a
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Remove CLIR prefix"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_a} :catch_0

    move-object/from16 v4, v29

    .line 380
    .end local v29    # "sessionDesc":Ljava/lang/String;
    .restart local v4    # "sessionDesc":Ljava/lang/String;
    :cond_12
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v25, v0

    .line 381
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[CMC] Displayname on pulling UI : use session-description value."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/text/ParseException; {:try_start_b .. :try_end_b} :catch_1

    move-object/from16 v29, v4

    goto :goto_8

    .line 389
    .end local v4    # "sessionDesc":Ljava/lang/String;
    .end local v28    # "sipInstance":Ljava/lang/String;
    .end local v33    # "mediaAttributes":Lorg/w3c/dom/NodeList;
    .restart local v29    # "sessionDesc":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v0

    move/from16 v17, v3

    move-object/from16 v28, v5

    move-object/from16 v0, v19

    goto/16 :goto_a

    .end local v29    # "sessionDesc":Ljava/lang/String;
    .restart local v4    # "sessionDesc":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v1, v0

    move/from16 v17, v3

    move-object/from16 v29, v4

    move-object/from16 v28, v5

    move-object/from16 v0, v19

    goto/16 :goto_a

    .line 384
    .restart local v28    # "sipInstance":Ljava/lang/String;
    .restart local v33    # "mediaAttributes":Lorg/w3c/dom/NodeList;
    :cond_13
    move-object/from16 v29, v4

    .end local v4    # "sessionDesc":Ljava/lang/String;
    .restart local v29    # "sessionDesc":Ljava/lang/String;
    :goto_8
    move/from16 v1, v16

    const/4 v0, 0x2

    .end local v16    # "callState":I
    .local v1, "callState":I
    if-eq v1, v0, :cond_14

    const/4 v0, 0x4

    if-eq v3, v0, :cond_14

    .line 386
    :try_start_c
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    const-string v4, "HELD call check by Audio Direction"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_c .. :try_end_c} :catch_2

    .line 387
    const/16 v16, 0x2

    .end local v1    # "callState":I
    .restart local v16    # "callState":I
    goto :goto_9

    .line 389
    .end local v16    # "callState":I
    .end local v28    # "sipInstance":Ljava/lang/String;
    .end local v33    # "mediaAttributes":Lorg/w3c/dom/NodeList;
    .restart local v1    # "callState":I
    :catch_2
    move-exception v0

    move/from16 v16, v1

    move/from16 v17, v3

    move-object/from16 v28, v5

    move-object v1, v0

    move-object/from16 v0, v19

    goto :goto_a

    .line 391
    :cond_14
    move/from16 v16, v1

    .end local v1    # "callState":I
    .restart local v16    # "callState":I
    :goto_9
    goto/16 :goto_b

    .line 389
    .end local v29    # "sessionDesc":Ljava/lang/String;
    .restart local v4    # "sessionDesc":Ljava/lang/String;
    :catch_3
    move-exception v0

    move/from16 v1, v16

    move/from16 v17, v3

    move-object/from16 v29, v4

    move-object/from16 v28, v5

    move-object v1, v0

    move-object/from16 v0, v19

    .end local v16    # "callState":I
    .restart local v1    # "callState":I
    goto :goto_a

    .end local v1    # "callState":I
    .end local v3    # "audioDirection":I
    .restart local v16    # "callState":I
    .restart local v17    # "audioDirection":I
    :catch_4
    move-exception v0

    move/from16 v1, v16

    move-object/from16 v29, v4

    move-object/from16 v28, v5

    move-object v1, v0

    move-object/from16 v0, v19

    .end local v16    # "callState":I
    .restart local v1    # "callState":I
    goto :goto_a

    .end local v1    # "callState":I
    .restart local v16    # "callState":I
    :catch_5
    move-exception v0

    move-object v1, v0

    move-object/from16 v29, v4

    move-object/from16 v28, v5

    move-object/from16 v0, v19

    goto :goto_a

    .end local v5    # "sipRendering":Ljava/lang/String;
    .local v28, "sipRendering":Ljava/lang/String;
    :catch_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v29, v4

    move-object/from16 v0, v19

    goto :goto_a

    .end local v4    # "sessionDesc":Ljava/lang/String;
    .restart local v29    # "sessionDesc":Ljava/lang/String;
    :catch_7
    move-exception v0

    move-object v1, v0

    move-object/from16 v0, v19

    goto :goto_a

    .end local v34    # "dialogInfoNode":Lorg/w3c/dom/Node;
    .local v5, "dialogInfoNode":Lorg/w3c/dom/Node;
    :catch_8
    move-exception v0

    move-object/from16 v34, v5

    move-object v1, v0

    move-object/from16 v0, v19

    .end local v5    # "dialogInfoNode":Lorg/w3c/dom/Node;
    .restart local v34    # "dialogInfoNode":Lorg/w3c/dom/Node;
    goto :goto_a

    .end local v32    # "xmlSource":Lorg/xml/sax/InputSource;
    .end local v34    # "dialogInfoNode":Lorg/w3c/dom/Node;
    .local v3, "xmlSource":Lorg/xml/sax/InputSource;
    .restart local v5    # "dialogInfoNode":Lorg/w3c/dom/Node;
    :catch_9
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v34, v5

    move-object v1, v0

    move-object/from16 v0, v19

    .line 390
    .end local v3    # "xmlSource":Lorg/xml/sax/InputSource;
    .end local v5    # "dialogInfoNode":Lorg/w3c/dom/Node;
    .end local v19    # "dialogId":Ljava/lang/String;
    .local v0, "dialogId":Ljava/lang/String;
    .local v1, "e":Ljava/text/ParseException;
    .restart local v32    # "xmlSource":Lorg/xml/sax/InputSource;
    .restart local v34    # "dialogInfoNode":Lorg/w3c/dom/Node;
    :goto_a
    sget-object v3, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse error for dialog id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v19, v0

    move/from16 v3, v17

    move-object/from16 v5, v28

    .line 393
    .end local v0    # "dialogId":Ljava/lang/String;
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v17    # "audioDirection":I
    .end local v28    # "sipRendering":Ljava/lang/String;
    .local v3, "audioDirection":I
    .local v5, "sipRendering":Ljava/lang/String;
    .restart local v19    # "dialogId":Ljava/lang/String;
    :goto_b
    new-instance v0, Lcom/sec/ims/Dialog;

    move-object/from16 v35, v0

    move-object/from16 v36, v19

    move-object/from16 v37, v20

    move-object/from16 v38, v21

    move-object/from16 v39, v22

    move-object/from16 v40, v23

    move-object/from16 v41, v24

    move-object/from16 v42, v25

    move-object/from16 v43, v26

    move-object/from16 v44, v27

    move-object/from16 v45, v29

    move/from16 v46, v13

    move/from16 v47, v14

    move/from16 v48, v15

    move/from16 v49, v16

    move/from16 v50, v3

    move/from16 v51, v18

    move/from16 v52, v30

    move/from16 v53, v31

    invoke-direct/range {v35 .. v53}, Lcom/sec/ims/Dialog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIZZ)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v3    # "audioDirection":I
    .end local v5    # "sipRendering":Ljava/lang/String;
    .end local v12    # "n":Lorg/w3c/dom/Node;
    .end local v13    # "state":I
    .end local v14    # "direction":I
    .end local v15    # "callType":I
    .end local v16    # "callState":I
    .end local v18    # "videoDirection":I
    .end local v19    # "dialogId":Ljava/lang/String;
    .end local v20    # "deviceId":Ljava/lang/String;
    .end local v21    # "sipCallId":Ljava/lang/String;
    .end local v22    # "sipLocalTag":Ljava/lang/String;
    .end local v23    # "sipRemoteTag":Ljava/lang/String;
    .end local v24    # "localUri":Ljava/lang/String;
    .end local v25    # "remoteUri":Ljava/lang/String;
    .end local v26    # "localDispName":Ljava/lang/String;
    .end local v27    # "remoteDispName":Ljava/lang/String;
    .end local v29    # "sessionDesc":Ljava/lang/String;
    .end local v30    # "isExclusive":Z
    .end local v31    # "isVideoPortZero":Z
    :goto_c
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v3, v32

    move-object/from16 v5, v34

    goto/16 :goto_1

    .end local v32    # "xmlSource":Lorg/xml/sax/InputSource;
    .end local v34    # "dialogInfoNode":Lorg/w3c/dom/Node;
    .local v3, "xmlSource":Lorg/xml/sax/InputSource;
    .local v5, "dialogInfoNode":Lorg/w3c/dom/Node;
    :cond_15
    move-object/from16 v32, v3

    move-object/from16 v34, v5

    .line 399
    .end local v3    # "xmlSource":Lorg/xml/sax/InputSource;
    .end local v5    # "dialogInfoNode":Lorg/w3c/dom/Node;
    .end local v11    # "i":I
    .restart local v32    # "xmlSource":Lorg/xml/sax/InputSource;
    .restart local v34    # "dialogInfoNode":Lorg/w3c/dom/Node;
    new-instance v0, Lcom/sec/ims/DialogEvent;

    invoke-direct {v0, v8, v10}, Lcom/sec/ims/DialogEvent;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 400
    .local v0, "de":Lcom/sec/ims/DialogEvent;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parsed dialog xml: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-object v0
.end method
