.class Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;
.super Ljava/lang/Object;
.source "SystemRequestMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->getData(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

.field final synthetic val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;->this$0:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    iput-object p2, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator$2;->val$value:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->data()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
