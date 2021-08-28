.class Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;
.super Ljava/lang/Object;
.source "DialogXmlParser.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    .line 81
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser$1;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/util/DialogXmlParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 84
    const-string v0, "dins"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string/jumbo v0, "urn:ietf:params:xml:ns:dialog-info"

    return-object v0

    .line 88
    :cond_0
    const-string/jumbo v0, "sa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string/jumbo v0, "urn:ietf:params:xml:ns:sa-dialog-info"

    return-object v0

    .line 92
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
