.class public Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
.super Lcom/sec/internal/helper/parser/HttpHeaderParser;
.source "WwwAuthHeaderParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WwwAuthHeaderParser"


# instance fields
.field private paramSplitHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/sec/internal/helper/parser/HttpHeaderParser;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private parse(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 0
    .param p1, "parsedAuthHeader"    # Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 62
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setScheme(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setRealm(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setNonce(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setAlgorithm(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setQop(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setStale(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setOpaque(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    .line 72
    :cond_0
    return-void
.end method

.method private setAlgorithm(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthHeader"    # Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "algorithmVal":Ljava/lang/String;
    const-string v1, "algorithm[\\s]*="

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 108
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setAlgorithm(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method private setNonce(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 3
    .param p1, "parsedAuthHeader"    # Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "nonceVal":Ljava/lang/String;
    const-string v1, "nonce[\\s]*="

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 96
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_0
    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 100
    .local v1, "indexOfComma":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 102
    .end local v1    # "indexOfComma":I
    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setNonce(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private setOpaque(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthHeader"    # Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "opaqueVal":Ljava/lang/String;
    const-string/jumbo v1, "opaque[\\s]*="

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 130
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setOpaque(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method private setQop(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 4
    .param p1, "parsedAuthHeader"    # Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 115
    const-string v0, ""

    .line 116
    .local v0, "qopVal":Ljava/lang/String;
    const-string/jumbo v1, "qop[\\s]*="

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 118
    const-string v2, "WwwAuthHeaderParser"

    if-nez v1, :cond_0

    .line 119
    const-string/jumbo v1, "setQop - no qop"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setQop - paramSplitHeader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", qopVal : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setQop(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private setRealm(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthHeader"    # Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "realmVal":Ljava/lang/String;
    const-string/jumbo v1, "realm[\\s]*="

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 87
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setRealm(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private setScheme(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthHeader"    # Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 75
    const-string v0, "Digest"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    const-string v0, "Basic"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "Unknown"

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void
.end method

.method private setStale(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 2
    .param p1, "parsedAuthHeader"    # Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .param p2, "headerVal"    # Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "staleVal":Ljava/lang/String;
    const-string/jumbo v1, "stale[\\s]*="

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 139
    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setStale(Z)V

    .line 143
    return-void
.end method


# virtual methods
.method public parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .locals 3
    .param p1, "headerValue"    # Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "parseAuthHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    new-instance v1, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    invoke-direct {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;-><init>()V

    move-object v0, v1

    .line 56
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parse(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WwwAuthenticateHeader - parseHeaderValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WwwAuthHeaderParser"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-object v0
.end method

.method public wwwAuthHeaderParse(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .locals 3
    .param p1, "headerVal"    # Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "parseAuthHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    if-nez p1, :cond_0

    .line 45
    return-object v0

    .line 47
    :cond_0
    new-instance v1, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    invoke-direct {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;-><init>()V

    move-object v0, v1

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parse(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WwwAuthenticateHeader - wwwAuthHeaderParse : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WwwAuthHeaderParser"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object v0
.end method
