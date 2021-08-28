.class public Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;
.super Ljava/lang/Object;
.source "ChatbotAnonymizeRespEvent.java"


# instance fields
.field public mChatbotUri:Ljava/lang/String;

.field public mCommandId:Ljava/lang/String;

.field public mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

.field public mRetryAfter:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Ljava/lang/String;I)V
    .locals 0
    .param p1, "chatbotUri"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p3, "commandId"    # Ljava/lang/String;
    .param p4, "retryAfter"    # I

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mChatbotUri:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 15
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mCommandId:Ljava/lang/String;

    .line 16
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mRetryAfter:I

    .line 17
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatbotAnonymizeRespEvent [mError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCommandId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mCommandId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mretryAfter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ChatbotAnonymizeRespEvent;->mRetryAfter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
