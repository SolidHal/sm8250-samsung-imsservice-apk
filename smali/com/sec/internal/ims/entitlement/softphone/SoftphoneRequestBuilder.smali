.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;
.super Ljava/lang/Object;
.source "SoftphoneRequestBuilder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public static buildExchangeForAccessTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/requests/ExchangeForAccessTokenRequest;
    .locals 8
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "appSecret"    # Ljava/lang/String;
    .param p2, "accountId"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .line 45
    new-instance v7, Lcom/sec/internal/ims/entitlement/softphone/requests/ExchangeForAccessTokenRequest;

    const-string/jumbo v4, "password"

    const-string v6, "SOFTPHONE CALLHANDLINGFEATURES EMERGENCYSERVICES"

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/requests/ExchangeForAccessTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public static buildProvisionAccountRequest()Lcom/sec/internal/ims/entitlement/softphone/requests/ProvisionAccountRequest;
    .locals 2

    .line 55
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/requests/ProvisionAccountRequest;

    const-string v1, "Yes"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/requests/ProvisionAccountRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildReleaseImsNetworkIdentifiersRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;
    .locals 3
    .param p0, "impi"    # Ljava/lang/String;
    .param p1, "impu"    # Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildReleaseImsNetworkIdentifiersRequest [IMPI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", IMPU: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildRevokeTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/requests/RevokeTokenRequest;
    .locals 1
    .param p0, "appKey"    # Ljava/lang/String;
    .param p1, "appSecret"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "tokenType"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/requests/RevokeTokenRequest;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/requests/RevokeTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildSendSMSRequest(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/requests/SendSMSRequest;
    .locals 3
    .param p0, "calleeNumber"    # Ljava/lang/String;

    .line 253
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/requests/SendSMSRequest;

    const/4 v1, 0x0

    const-string v2, "AT&T Msg: You have activated NumberSync. NumberSync allows you to make and receive calls on your other device using the same mobile number as your smartphone, even when your smartphone is not nearby or connected to the same Wi-Fi network. Visit att.com/numbersync for more info."

    invoke-direct {v0, v1, v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/requests/SendSMSRequest;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildSetCallForwardingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)Ljava/lang/String;
    .locals 10
    .param p0, "info"    # Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 158
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "communication-diversion"

    const/4 v2, 0x0

    const-string/jumbo v3, "ss"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-boolean v1, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v4, "active"

    invoke-virtual {v0, v4, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 163
    .local v0, "callForwarding":Lcom/sec/internal/constants/ims/XmlElement;
    iget-boolean v1, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mNoReplyTimer:I

    if-lez v1, :cond_1

    .line 164
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    iget v4, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mNoReplyTimer:I

    .line 165
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "NoReplyTimer"

    invoke-direct {v1, v5, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 168
    :cond_1
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v4, "rule"

    invoke-direct {v1, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    .line 169
    invoke-static {v4}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneCallHandling;->getId(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v1, v5, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 171
    .local v1, "rule":Lcom/sec/internal/constants/ims/XmlElement;
    iget-boolean v4, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    const-string/jumbo v5, "target"

    const-string v6, "forward-to"

    const-string v7, "actions"

    const-string v8, "conditions"

    if-eqz v4, :cond_2

    .line 182
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v4, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/sec/internal/constants/ims/XmlElement;

    iget v9, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    .line 184
    invoke-static {v9}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneCallHandling;->getCondition(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    .line 183
    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 187
    iget-boolean v4, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mRetained:Z

    if-nez v4, :cond_3

    .line 188
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v4, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v7, v6, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tel:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardNumber:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v7, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 189
    invoke-virtual {v4, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 188
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    goto :goto_1

    .line 204
    :cond_2
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v4, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/sec/internal/constants/ims/XmlElement;

    iget v9, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    .line 205
    invoke-static {v9}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces$SoftphoneCallHandling;->getCondition(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    new-instance v8, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v9, "rule-deactivated"

    invoke-direct {v8, v9, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v4, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v4

    .line 204
    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 210
    iget-boolean v4, p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mRetained:Z

    if-eqz v4, :cond_3

    .line 211
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v4, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v7, v6, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v6, ""

    invoke-direct {v3, v5, v6}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v7, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 212
    invoke-virtual {v4, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v3

    .line 211
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 217
    :cond_3
    :goto_1
    new-instance v3, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v4, "ruleset"

    const-string v5, "cp"

    invoke-direct {v3, v4, v2, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v2

    .line 219
    .local v2, "ruleSet":Lcom/sec/internal/constants/ims/XmlElement;
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 221
    const-string v3, "1.0"

    const-string v4, "UTF-8"

    invoke-static {v0, v3, v4}, Lcom/sec/internal/constants/ims/XmlCreator;->toXml(Lcom/sec/internal/constants/ims/XmlElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static buildSetCallWaitingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    .line 134
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "communication-waiting"

    const/4 v2, 0x0

    const-string/jumbo v3, "ss"

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v1, p0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->mActive:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, "active"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 137
    .local v0, "callWaiting":Lcom/sec/internal/constants/ims/XmlElement;
    const-string v1, "1.0"

    const-string v2, "UTF-8"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/XmlCreator;->toXml(Lcom/sec/internal/constants/ims/XmlElement;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDelimitedAddressString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, "houseNumber"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v2, "houseNumExt"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string/jumbo v2, "streetDir"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string/jumbo v2, "street"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v2, "streetNameSuffix"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string/jumbo v2, "streetDirSuffix"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v2, "city"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v2, "state"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string/jumbo v2, "zip"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v2, "addressAdditional"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, "E911AID"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, "expire_date"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    return-object v0
.end method


# virtual methods
.method public buildAddAddressRequest(I)Lcom/sec/internal/ims/entitlement/softphone/requests/AddAddressRequest;
    .locals 8
    .param p1, "addressId"    # I

    .line 91
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildAddAddressRequest [addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    int-to-long v0, p1

    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildAddressUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 94
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 95
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->getDelimitedAddressString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "address":Ljava/lang/String;
    new-instance v3, Lcom/sec/internal/ims/entitlement/softphone/requests/AddAddressRequest;

    invoke-direct {v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/requests/AddAddressRequest;-><init>(Ljava/lang/String;)V

    .line 100
    .local v3, "request":Lcom/sec/internal/ims/entitlement/softphone/requests/AddAddressRequest;
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 101
    return-object v3

    .line 103
    .end local v2    # "address":Ljava/lang/String;
    .end local v3    # "request":Lcom/sec/internal/ims/entitlement/softphone/requests/AddAddressRequest;
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public buildAddressValidationRequest(IZ)Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest;
    .locals 18
    .param p1, "addressId"    # I
    .param p2, "confirmed"    # Z

    .line 59
    move/from16 v0, p1

    move/from16 v1, p2

    sget-object v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildAddressValidationRequest [addressId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", confirmed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildAddressUri(J)Landroid/net/Uri;

    move-result-object v2

    .line 62
    .local v2, "uri":Landroid/net/Uri;
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 63
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_2

    .line 64
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    new-instance v5, Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$Address;

    .line 68
    const-string v6, "houseNumber"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 69
    const-string v6, "houseNumExt"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 70
    const-string/jumbo v6, "streetDir"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 71
    const-string/jumbo v6, "street"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 72
    const-string/jumbo v6, "streetNameSuffix"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 73
    const-string/jumbo v6, "streetDirSuffix"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 74
    const-string v6, "city"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 75
    const-string/jumbo v6, "state"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 76
    const-string/jumbo v6, "zip"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 77
    const-string v6, "addressAdditional"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v7, "ATT WiFi Calling"

    move-object v6, v5

    invoke-direct/range {v6 .. v17}, Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$Address;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v5, "address":Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$Address;
    new-instance v6, Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest;

    if-eqz v1, :cond_0

    const-string/jumbo v7, "true"

    goto :goto_0

    :cond_0
    const-string v7, "false"

    :goto_0
    invoke-direct {v6, v5, v7}, Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest;-><init>(Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$Address;Ljava/lang/String;)V

    .line 81
    .local v6, "request":Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest;
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 82
    return-object v6

    .line 84
    .end local v5    # "address":Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest$Address;
    .end local v6    # "request":Lcom/sec/internal/ims/entitlement/softphone/requests/AddressValidationRequest;
    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method public buildObtainPdCookiesQueryParams(Ljava/lang/String;ILjavax/crypto/SecretKey;Ljava/lang/String;)Ljava/util/LinkedHashMap;
    .locals 9
    .param p1, "accountId"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p4, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljavax/crypto/SecretKey;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildObtainPdCookiesQueryParams [accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const-string/jumbo v1, "softphone"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, "sharedPrefHelper":Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;
    const-string v1, "AES"

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getInstance(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    move-result-object v1

    .line 231
    .local v1, "encryptionHelper":Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tguard_appid"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "encodedTGaurdAppId":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tguard_token"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "encodedTGaurdToken":Ljava/lang/String;
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 238
    .local v4, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v5, "TG_OP"

    const-string v6, "SessionGen"

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v5, "appID"

    invoke-virtual {v1, v2, p3}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v5, "atsToken"

    invoke-virtual {v1, v3, p3}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string/jumbo v5, "style"

    invoke-virtual {v4, v5, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string/jumbo v5, "returnErrorCode"

    const-string/jumbo v6, "true"

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string/jumbo v5, "targetURL"

    const-string v6, "http://good.com"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v5, "errorURL"

    const-string v6, "http://error.com"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {v7}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    goto :goto_0

    .line 245
    :catch_0
    move-exception v5

    .line 246
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .end local v5    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object v4
.end method
