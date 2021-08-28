.class public Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;
.super Lcom/sec/internal/helper/parser/HttpHeaderParser;
.source "AuthInfoHeaderParser.java"


# static fields
.field private static final REGEX_CNONCE:Ljava/lang/String; = "cnonce[\\s]*="

.field private static final REGEX_NEXTNONCE:Ljava/lang/String; = "nextnonce[\\s]*="

.field private static final REGEX_NONCECOUNT:Ljava/lang/String; = "nc[\\s]*="

.field private static final REGEX_RSPAUTH:Ljava/lang/String; = "rspauth[\\s]*="

.field private static final TAG:Ljava/lang/String; = "AuthInfoHeaderParser"


# instance fields
.field private paramSplitHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/sec/internal/helper/parser/HttpHeaderParser;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private parse(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parseAuthInfoHeader"    # Lcom/sec/internal/helper/header/AuthenticationInfoHeader;
    .param p2, "headerValue"    # Ljava/lang/String;

    .line 47
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->setQop(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->setRspAuth(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->setCNonce(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->setNonceCount(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->setNextNonce(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->toString()Ljava/lang/String;

    .line 57
    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authentication-Info Header Value is Null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setCNonce(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthInfoHeader"    # Lcom/sec/internal/helper/header/AuthenticationInfoHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "cNonceVal":Ljava/lang/String;
    const-string v1, "cnonce[\\s]*="

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 77
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->setCnonce(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method private setNextNonce(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthInfoHeader"    # Lcom/sec/internal/helper/header/AuthenticationInfoHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "nextNonceVal":Ljava/lang/String;
    const-string v1, "nextnonce[\\s]*="

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 93
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->setNextNonce(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method private setNonceCount(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthInfoHeader"    # Lcom/sec/internal/helper/header/AuthenticationInfoHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "nonceCountVal":Ljava/lang/String;
    const-string v1, "nc[\\s]*="

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 85
    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->setCnonce(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private setQop(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthInfoHeader"    # Lcom/sec/internal/helper/header/AuthenticationInfoHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "qopVal":Ljava/lang/String;
    const-string/jumbo v1, "qop[\\s]*="

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 61
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->setQop(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private setRspAuth(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthInfoHeader"    # Lcom/sec/internal/helper/header/AuthenticationInfoHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "rspAuthVal":Ljava/lang/String;
    const-string/jumbo v1, "rspauth[\\s]*="

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 69
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->setRspauth(Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/AuthenticationInfoHeader;
    .locals 3
    .param p1, "headerValue"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "parseAuthHeader":Lcom/sec/internal/helper/header/AuthenticationInfoHeader;
    new-instance v1, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;

    invoke-direct {v1}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;-><init>()V

    move-object v0, v1

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->parse(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AuthenticationInfoHeader - parseHeaderValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AuthInfoHeaderParser"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-object v0
.end method
