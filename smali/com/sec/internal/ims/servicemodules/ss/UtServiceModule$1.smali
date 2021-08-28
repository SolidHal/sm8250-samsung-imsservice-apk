.class Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;
.super Lcom/sec/ims/IImsRegistrationListener$Stub;
.source "UtServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 178
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-direct {p0}, Lcom/sec/ims/IImsRegistrationListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 1
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # Lcom/sec/ims/ImsRegistrationError;

    .line 201
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->unbindSoftPhoneService()V

    .line 204
    :cond_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 5
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 181
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 182
    .local v0, "phoneId":I
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 183
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getimpi(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 185
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getimpi(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getImpuOfType(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setLastUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getimpi(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setLastUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    .line 192
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->bindSoftPhoneService()V

    .line 194
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->access$000(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->makeConfig(I)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->makeFeature(I)Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateConfig(Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;)V

    .line 195
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    .line 197
    :cond_2
    return-void
.end method
