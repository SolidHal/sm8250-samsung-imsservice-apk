.class public Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;
.super Ljava/lang/Object;
.source "XdmFetchDocumentParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NodeSelector"
.end annotation


# instance fields
.field public mAttr:Ljava/lang/String;

.field public mAttrVal:Ljava/lang/String;

.field public final mNode:Ljava/lang/String;

.field public mPosition:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "pos"    # I
    .param p3, "attr"    # Ljava/lang/String;
    .param p4, "attrVal"    # Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;->mNode:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;->mPosition:I

    .line 35
    iput-object p3, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;->mAttr:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;->mAttrVal:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NodeSelector [mNode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;->mNode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAttr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;->mAttr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAttrVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/xdm/event/XdmFetchDocumentParams$NodeSelector;->mAttrVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
