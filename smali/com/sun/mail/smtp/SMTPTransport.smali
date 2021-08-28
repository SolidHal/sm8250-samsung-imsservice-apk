.class public Lcom/sun/mail/smtp/SMTPTransport;
.super Ljavax/mail/Transport;
.source "SMTPTransport.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CRLF:[B

.field private static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field private static hexchar:[C

.field private static final ignoreList:[Ljava/lang/String;


# instance fields
.field private addresses:[Ljavax/mail/Address;

.field private dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

.field private defaultPort:I

.field private exception:Ljavax/mail/MessagingException;

.field private extMap:Ljava/util/Hashtable;

.field private invalidAddr:[Ljavax/mail/Address;

.field private isSSL:Z

.field private lastReturnCode:I

.field private lastServerResponse:Ljava/lang/String;

.field private lineInputStream:Lcom/sun/mail/util/LineInputStream;

.field private localHostName:Ljava/lang/String;

.field private md5support:Lcom/sun/mail/smtp/DigestMD5;

.field private message:Ljavax/mail/internet/MimeMessage;

.field private name:Ljava/lang/String;

.field private out:Ljava/io/PrintStream;

.field private quitWait:Z

.field private reportSuccess:Z

.field private saslRealm:Ljava/lang/String;

.field private sendPartiallyFailed:Z

.field private serverInput:Ljava/io/BufferedInputStream;

.field private serverOutput:Ljava/io/OutputStream;

.field private serverSocket:Ljava/net/Socket;

.field private useRset:Z

.field private useStartTLS:Z

.field private validSentAddr:[Ljavax/mail/Address;

.field private validUnsentAddr:[Ljavax/mail/Address;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    nop

    .line 119
    const-string v0, "Bcc"

    const-string v1, "Content-Length"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    .line 1737
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    .line 1738
    nop

    .line 1739
    nop

    .line 1737
    sput-object v0, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .locals 6
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;

    .line 128
    const-string/jumbo v3, "smtp"

    const/16 v4, 0x19

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/mail/smtp/SMTPTransport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V

    .line 129
    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;IZ)V
    .locals 7
    .param p1, "session"    # Ljavax/mail/Session;
    .param p2, "urlname"    # Ljavax/mail/URLName;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultPort"    # I
    .param p5, "isSSL"    # Z

    .line 136
    invoke-direct {p0, p1, p2}, Ljavax/mail/Transport;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    .line 87
    const-string/jumbo v0, "smtp"

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    .line 88
    const/16 v0, 0x19

    iput v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 97
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 106
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    .line 107
    const-string v1, "UNKNOWN"

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 137
    if-eqz p2, :cond_0

    .line 138
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 139
    :cond_0
    iput-object p3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    .line 140
    iput p4, p0, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    .line 141
    iput-boolean p5, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 143
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".quitwait"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "s":Ljava/lang/String;
    const-string/jumbo v3, "true"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    iput-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".reportsuccess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    iput-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    .line 155
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".starttls.enable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v0

    :goto_2
    iput-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    .line 160
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".userset"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v4

    :cond_4
    iput-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    .line 162
    return-void
.end method

.method private closeConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 710
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :cond_0
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 716
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 717
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 718
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 719
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 720
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    .line 722
    :cond_1
    return-void

    .line 714
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 712
    :catch_0
    move-exception v1

    .line 713
    .local v1, "ioex":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Server Close Failed"

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    .end local v1    # "ioex":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :goto_0
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 716
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 717
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 718
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 719
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    invoke-super {p0}, Ljavax/mail/Transport;->close()V

    .line 721
    :cond_2
    throw v1
.end method

.method private convertTo8Bit(Ljavax/mail/internet/MimePart;)Z
    .locals 5
    .param p1, "part"    # Ljavax/mail/internet/MimePart;

    .line 818
    const/4 v0, 0x0

    .line 820
    .local v0, "changed":Z
    :try_start_0
    const-string/jumbo v1, "text/*"

    invoke-interface {p1, v1}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 821
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "enc":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string/jumbo v2, "quoted-printable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 823
    const-string v2, "base64"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 824
    :cond_0
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 825
    .local v2, "is":Ljava/io/InputStream;
    invoke-direct {p0, v2}, Lcom/sun/mail/smtp/SMTPTransport;->is8Bit(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 835
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v3

    .line 836
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 835
    invoke-interface {p1, v3, v4}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    const-string v3, "Content-Transfer-Encoding"

    const-string v4, "8bit"

    invoke-interface {p1, v3, v4}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const/4 v0, 0x1

    .end local v2    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 841
    .end local v1    # "enc":Ljava/lang/String;
    :cond_1
    const-string v1, "multipart/*"

    invoke-interface {p1, v1}, Ljavax/mail/internet/MimePart;->isMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 842
    invoke-interface {p1}, Ljavax/mail/internet/MimePart;->getContent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeMultipart;

    .line 843
    .local v1, "mp":Ljavax/mail/internet/MimeMultipart;
    invoke-virtual {v1}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v2

    .line 844
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v2, :cond_2

    .end local v1    # "mp":Ljavax/mail/internet/MimeMultipart;
    .end local v2    # "count":I
    .end local v3    # "i":I
    goto :goto_1

    .line 845
    .restart local v1    # "mp":Ljavax/mail/internet/MimeMultipart;
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    :cond_2
    invoke-virtual {v1, v3}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v4

    check-cast v4, Ljavax/mail/internet/MimePart;

    invoke-direct {p0, v4}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 846
    const/4 v0, 0x1

    .line 844
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 851
    .end local v1    # "mp":Ljavax/mail/internet/MimeMultipart;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    goto :goto_1

    .line 849
    :catch_1
    move-exception v1

    .line 854
    :cond_4
    :goto_1
    return v0
.end method

.method private expandGroups()V
    .locals 6

    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, "groups":Ljava/util/Vector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 800
    .end local v1    # "i":I
    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/internet/InternetAddress;

    .line 802
    .local v1, "newa":[Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 803
    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 805
    .end local v1    # "newa":[Ljavax/mail/internet/InternetAddress;
    :cond_0
    return-void

    .line 772
    .local v1, "i":I
    :cond_1
    aget-object v2, v2, v1

    check-cast v2, Ljavax/mail/internet/InternetAddress;

    .line 773
    .local v2, "a":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v2}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 774
    if-nez v0, :cond_3

    .line 776
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 777
    .end local v0    # "groups":Ljava/util/Vector;
    .local v3, "groups":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_1
    if-lt v0, v1, :cond_2

    move-object v0, v3

    goto :goto_2

    .line 778
    :cond_2
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 777
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 782
    .end local v3    # "groups":Ljava/util/Vector;
    .local v0, "groups":Ljava/util/Vector;
    :cond_3
    :goto_2
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, v3}, Ljavax/mail/internet/InternetAddress;->getGroup(Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    .line 783
    .local v3, "ia":[Ljavax/mail/internet/InternetAddress;
    if-eqz v3, :cond_5

    .line 784
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    array-length v5, v3

    if-lt v4, v5, :cond_4

    .end local v4    # "j":I
    goto :goto_4

    .line 785
    .restart local v4    # "j":I
    :cond_4
    aget-object v5, v3, v4

    invoke-virtual {v0, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 784
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 787
    .end local v4    # "j":I
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 788
    .end local v3    # "ia":[Ljavax/mail/internet/InternetAddress;
    :catch_0
    move-exception v3

    .line 790
    .local v3, "pex":Ljavax/mail/internet/ParseException;
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .end local v3    # "pex":Ljavax/mail/internet/ParseException;
    goto :goto_4

    .line 794
    :cond_6
    if-eqz v0, :cond_7

    .line 795
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 771
    .end local v2    # "a":Ljavax/mail/internet/InternetAddress;
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized getMD5()Lcom/sun/mail/smtp/DigestMD5;
    .locals 2

    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Lcom/sun/mail/smtp/DigestMD5;

    iget-boolean v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    goto :goto_0

    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/DigestMD5;-><init>(Ljava/io/PrintStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;

    .line 348
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->md5support:Lcom/sun/mail/smtp/DigestMD5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initStreams()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1441
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    .line 1442
    .local v0, "props":Ljava/util/Properties;
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v1

    .line 1443
    .local v1, "out":Ljava/io/PrintStream;
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getDebug()Z

    move-result v2

    .line 1445
    .local v2, "debug":Z
    const-string v3, "mail.debug.quote"

    invoke-virtual {v0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1446
    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1449
    .local v4, "quote":Z
    :goto_0
    new-instance v5, Lcom/sun/mail/util/TraceInputStream;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/sun/mail/util/TraceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1448
    nop

    .line 1450
    .local v5, "traceInput":Lcom/sun/mail/util/TraceInputStream;
    invoke-virtual {v5, v2}, Lcom/sun/mail/util/TraceInputStream;->setTrace(Z)V

    .line 1451
    invoke-virtual {v5, v4}, Lcom/sun/mail/util/TraceInputStream;->setQuote(Z)V

    .line 1454
    new-instance v6, Lcom/sun/mail/util/TraceOutputStream;

    iget-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Lcom/sun/mail/util/TraceOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    .line 1453
    nop

    .line 1455
    .local v6, "traceOutput":Lcom/sun/mail/util/TraceOutputStream;
    invoke-virtual {v6, v2}, Lcom/sun/mail/util/TraceOutputStream;->setTrace(Z)V

    .line 1456
    invoke-virtual {v6, v4}, Lcom/sun/mail/util/TraceOutputStream;->setQuote(Z)V

    .line 1458
    nop

    .line 1459
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1458
    iput-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1460
    nop

    .line 1461
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1460
    iput-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1462
    new-instance v7, Lcom/sun/mail/util/LineInputStream;

    iget-object v8, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    invoke-direct {v7, v8}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v7, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1463
    return-void
.end method

.method private is8Bit(Ljava/io/InputStream;)Z
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;

    .line 866
    const/4 v0, 0x0

    .line 867
    .local v0, "linelen":I
    const/4 v1, 0x0

    .line 869
    .local v1, "need8bit":Z
    nop

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v3

    .local v4, "b":I
    if-gez v3, :cond_2

    .line 886
    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 887
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG SMTP: found an 8bit part"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 888
    :cond_1
    return v1

    .line 870
    :cond_2
    and-int/lit16 v3, v4, 0xff

    .line 871
    .end local v4    # "b":I
    .local v3, "b":I
    const/16 v4, 0xd

    if-eq v3, v4, :cond_5

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 873
    :cond_3
    if-nez v3, :cond_4

    .line 874
    return v2

    .line 876
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 877
    const/16 v4, 0x3e6

    if-le v0, v4, :cond_6

    .line 878
    return v2

    .line 872
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 880
    :cond_6
    const/16 v2, 0x7f

    if-le v3, v2, :cond_0

    .line 881
    const/4 v1, 0x1

    goto :goto_0

    .line 883
    .end local v3    # "b":I
    :catch_0
    move-exception v3

    .line 884
    .local v3, "ex":Ljava/io/IOException;
    return v2
.end method

.method private isNotLastLine(Ljava/lang/String;)Z
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .line 1669
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private issueSendCommand(Ljava/lang/String;I)V
    .locals 17
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1489
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1494
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v1

    move v10, v1

    move/from16 v11, p2

    .local v10, "ret":I
    if-eq v1, v11, :cond_6

    .line 1497
    iget-object v1, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    array-length v1, v1

    .line 1498
    .local v1, "vsl":I
    :goto_0
    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    array-length v3, v3

    :goto_1
    move v12, v3

    .line 1499
    .local v12, "vul":I
    add-int v3, v1, v12

    new-array v13, v3, [Ljavax/mail/Address;

    .line 1500
    .local v13, "valid":[Ljavax/mail/Address;
    if-lez v1, :cond_2

    .line 1501
    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    invoke-static {v3, v2, v13, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1502
    :cond_2
    if-lez v12, :cond_3

    .line 1503
    iget-object v3, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    invoke-static {v3, v2, v13, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1504
    :cond_3
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1505
    iput-object v13, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1506
    iget-boolean v2, v0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_4

    .line 1507
    iget-object v2, v0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: got response code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1508
    const-string v4, ", with response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1507
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1509
    :cond_4
    iget-object v14, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1510
    .local v14, "_lsr":Ljava/lang/String;
    iget v15, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1511
    .local v15, "_lrc":I
    iget-object v2, v0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v2, :cond_5

    .line 1512
    const/16 v2, 0xfa

    const-string v3, "RSET"

    invoke-virtual {v0, v3, v2}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1513
    :cond_5
    iput-object v14, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1514
    iput v15, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1515
    new-instance v16, Lcom/sun/mail/smtp/SMTPSendFailedException;

    iget-object v5, v0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1516
    iget-object v6, v0, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    iget-object v7, v0, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v8, v0, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v9, v0, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1515
    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move v4, v10

    invoke-direct/range {v2 .. v9}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v16

    .line 1518
    .end local v1    # "vsl":I
    .end local v12    # "vul":I
    .end local v13    # "valid":[Ljavax/mail/Address;
    .end local v14    # "_lsr":Ljava/lang/String;
    .end local v15    # "_lrc":I
    :cond_6
    return-void
.end method

.method private normalizeAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "addr"    # Ljava/lang/String;

    .line 1674
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1675
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1677
    :cond_0
    return-object p1
.end method

.method private openServer()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1401
    const-string v0, ", port: "

    const/4 v1, -0x1

    .line 1402
    .local v1, "port":I
    const-string v2, "UNKNOWN"

    .line 1404
    .local v2, "server":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v3

    move v1, v3

    .line 1405
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 1406
    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_0

    .line 1407
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG SMTP: starting protocol to host \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1407
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1410
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 1412
    const/4 v3, -0x1

    .line 1413
    .local v3, "r":I
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    const/16 v5, 0xdc

    const-string v6, "\n"

    const-string v7, "\", port: "

    if-eq v4, v5, :cond_2

    .line 1414
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 1415
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1416
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1417
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1418
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1419
    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, ", response: "

    if-eqz v4, :cond_1

    .line 1420
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG SMTP: got bad greeting from host \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1422
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1420
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1423
    :cond_1
    new-instance v4, Ljavax/mail/MessagingException;

    .line 1424
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got bad greeting from SMTP host: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1426
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1424
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1423
    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local v1    # "port":I
    .end local v2    # "server":Ljava/lang/String;
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    throw v4

    .line 1428
    .restart local v1    # "port":I
    .restart local v2    # "server":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_2
    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v4, :cond_3

    .line 1429
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "DEBUG SMTP: protocol started to host \""

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1430
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1429
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1437
    .end local v3    # "r":I
    :cond_3
    return-void

    .line 1432
    :catch_0
    move-exception v3

    .line 1433
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Ljavax/mail/MessagingException;

    .line 1434
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not start protocol to SMTP host: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1434
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1435
    nop

    .line 1433
    invoke-direct {v4, v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method private openServer(Ljava/lang/String;I)V
    .locals 10
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1352
    const-string v0, ", port: "

    const-string v1, "Could not connect to SMTP host: "

    iget-boolean v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_0

    .line 1353
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: trying to connect to host \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1354
    const-string v4, "\", port "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isSSL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1353
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1357
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v2}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v2

    .line 1359
    .local v2, "props":Ljava/util/Properties;
    nop

    .line 1360
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mail."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->isSSL:Z

    .line 1359
    invoke-static {p1, p2, v2, v3, v4}, Lcom/sun/mail/util/SocketFetcher;->getSocket(Ljava/lang/String;ILjava/util/Properties;Ljava/lang/String;Z)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1364
    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v3

    move p2, v3

    .line 1366
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V

    .line 1368
    const/4 v3, -0x1

    .line 1369
    .local v3, "r":I
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    const/16 v5, 0xdc

    const-string v6, "\n"

    const-string v7, "\", port: "

    if-eq v4, v5, :cond_2

    .line 1370
    :try_start_1
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 1371
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1372
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    .line 1373
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverInput:Ljava/io/BufferedInputStream;

    .line 1374
    iput-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    .line 1375
    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, ", response: "

    if-eqz v4, :cond_1

    .line 1376
    :try_start_2
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "DEBUG SMTP: could not connect to host \""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1378
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1376
    invoke-virtual {v4, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1379
    :cond_1
    new-instance v4, Ljavax/mail/MessagingException;

    .line 1380
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1381
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1382
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1380
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1379
    invoke-direct {v4, v5}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "server":Ljava/lang/String;
    .end local p2    # "port":I
    throw v4

    .line 1384
    .restart local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .restart local p1    # "server":Ljava/lang/String;
    .restart local p2    # "port":I
    :cond_2
    iget-boolean v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v4, :cond_3

    .line 1385
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "DEBUG SMTP: connected to host \""

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1385
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1394
    .end local v2    # "props":Ljava/util/Properties;
    .end local v3    # "r":I
    :cond_3
    return-void

    .line 1390
    :catch_0
    move-exception v2

    .line 1391
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1391
    invoke-direct {v3, v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 1388
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1389
    .local v0, "uhex":Ljava/net/UnknownHostException;
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown SMTP host: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method private sendCommand([B)V
    .locals 3
    .param p1, "cmdBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1555
    nop

    .line 1560
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1561
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    sget-object v1, Lcom/sun/mail/smtp/SMTPTransport;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1562
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1566
    return-void

    .line 1563
    :catch_0
    move-exception v0

    .line 1564
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "Can\'t send command to SMTP host"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected static xtext(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 1761
    const/4 v0, 0x0

    .line 1762
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1780
    .end local v1    # "i":I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    move-object v1, p0

    :goto_1
    return-object v1

    .line 1763
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1764
    .local v2, "c":C
    const/16 v3, 0x80

    if-ge v2, v3, :cond_6

    .line 1767
    const/16 v3, 0x21

    const/16 v4, 0x2b

    if-lt v2, v3, :cond_3

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_3

    if-eq v2, v4, :cond_3

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_2

    goto :goto_2

    .line 1776
    :cond_2
    if-eqz v0, :cond_5

    .line 1777
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1768
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 1769
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v3

    .line 1770
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1772
    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1773
    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit16 v4, v2, 0xf0

    shr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1774
    sget-object v3, Lcom/sun/mail/smtp/SMTPTransport;->hexchar:[C

    and-int/lit8 v4, v2, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1762
    .end local v2    # "c":C
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1765
    .restart local v2    # "c":C
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1766
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Non-ASCII character in SMTP submitter: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1765
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method protected checkConnected()V
    .locals 2

    .line 1663
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    return-void

    .line 1664
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 692
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_0

    .line 693
    monitor-exit p0

    return-void

    .line 695
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 696
    :try_start_2
    const-string v0, "QUIT"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 697
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->quitWait:Z

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    .line 699
    .local v0, "resp":I
    const/16 v1, 0xdd

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 700
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DEBUG SMTP: QUIT failed with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "resp":I
    goto :goto_0

    .line 703
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 704
    :cond_1
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 706
    monitor-exit p0

    return-void

    .line 703
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_1
    move-exception v0

    .line 704
    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 705
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 691
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 209
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 210
    invoke-super {p0}, Ljavax/mail/Transport;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 208
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "socket":Ljava/net/Socket;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected data()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1307
    nop

    .line 1308
    const/16 v0, 0x162

    const-string v1, "DATA"

    invoke-direct {p0, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    .line 1309
    new-instance v0, Lcom/sun/mail/smtp/SMTPOutputStream;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverOutput:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Lcom/sun/mail/smtp/SMTPOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    .line 1310
    return-object v0
.end method

.method protected ehlo(Ljava/lang/String;)Z
    .locals 12
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 931
    if-eqz p1, :cond_0

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EHLO "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "cmd":Ljava/lang/String;
    goto :goto_0

    .line 934
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_0
    const-string v0, "EHLO"

    .line 935
    .restart local v0    # "cmd":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v1

    .line 937
    .local v1, "resp":I
    const/4 v2, 0x0

    const/16 v3, 0xfa

    if-ne v1, v3, :cond_6

    .line 940
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/StringReader;

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 939
    nop

    .line 942
    .local v4, "rd":Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    .line 944
    const/4 v5, 0x1

    .line 945
    .local v5, "first":Z
    nop

    :goto_1
    :try_start_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-nez v6, :cond_1

    goto :goto_2

    .line 946
    :cond_1
    if-eqz v5, :cond_2

    .line 947
    const/4 v5, 0x0

    .line 948
    goto :goto_1

    .line 950
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x5

    if-ge v6, v8, :cond_3

    .line 951
    goto :goto_1

    .line 952
    :cond_3
    const/4 v6, 0x4

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 953
    .end local v7    # "line":Ljava/lang/String;
    .local v6, "line":Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 954
    .local v7, "i":I
    const-string v8, ""

    .line 955
    .local v8, "arg":Ljava/lang/String;
    if-lez v7, :cond_4

    .line 956
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 957
    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 959
    :cond_4
    iget-boolean v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v9, :cond_5

    .line 960
    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "DEBUG SMTP: Found extension \""

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\", arg \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 960
    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 962
    :cond_5
    iget-object v9, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 964
    .end local v5    # "first":Z
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "arg":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 966
    .end local v4    # "rd":Ljava/io/BufferedReader;
    :cond_6
    :goto_2
    if-ne v1, v3, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 892
    invoke-super {p0}, Ljavax/mail/Transport;->finalize()V

    .line 894
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    .line 896
    :goto_0
    return-void
.end method

.method protected finishData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1319
    nop

    .line 1320
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->dataStream:Lcom/sun/mail/smtp/SMTPOutputStream;

    invoke-virtual {v0}, Lcom/sun/mail/smtp/SMTPOutputStream;->ensureAtBOL()V

    .line 1321
    const/16 v0, 0xfa

    const-string v1, "."

    invoke-direct {p0, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    .line 1322
    return-void
.end method

.method public getExtensionParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ext"    # Ljava/lang/String;

    .line 1707
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1708
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1707
    :goto_0
    return-object v0
.end method

.method public declared-synchronized getLastReturnCode()I
    .locals 1

    monitor-enter p0

    .line 340
    :try_start_0
    iget v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 340
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastServerResponse()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 329
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLocalHost()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 173
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    nop

    .line 174
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".localhost"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 176
    :cond_2
    nop

    .line 177
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".localaddress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 178
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 179
    :cond_4
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 180
    .local v0, "localHost":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;

    .line 182
    if-nez v1, :cond_5

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localHost":Ljava/net/InetAddress;
    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    .line 188
    :cond_5
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 171
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReportSuccess()Z
    .locals 1

    monitor-enter p0

    .line 255
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 255
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSASLRealm()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".sasl.realm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 223
    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".saslrealm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;

    .line 226
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartTLS()Z
    .locals 1

    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 279
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseRset()Z
    .locals 1

    monitor-enter p0

    .line 302
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 302
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected helo(Ljava/lang/String;)V
    .locals 3
    .param p1, "domain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 914
    const/16 v0, 0xfa

    if-eqz p1, :cond_0

    .line 915
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HELO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    goto :goto_0

    .line 917
    :cond_0
    const-string v1, "HELO"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 918
    :goto_0
    return-void
.end method

.method public declared-synchronized isConnected()Z
    .locals 3

    monitor-enter p0

    .line 729
    :try_start_0
    invoke-super {p0}, Ljavax/mail/Transport;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 731
    monitor-exit p0

    return v1

    .line 736
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z

    if-eqz v0, :cond_1

    .line 737
    const-string v0, "RSET"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 739
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_1
    const-string v0, "NOOP"

    invoke-virtual {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 740
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 750
    .local v0, "resp":I
    if-ltz v0, :cond_2

    const/16 v2, 0x1a5

    if-eq v0, v2, :cond_2

    .line 751
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 754
    .restart local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 755
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catch_0
    move-exception v2

    .line 756
    :goto_1
    monitor-exit p0

    return v1

    .line 758
    .end local v0    # "resp":I
    :catch_1
    move-exception v0

    .line 760
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 761
    :catch_2
    move-exception v2

    .line 762
    :goto_2
    monitor-exit p0

    return v1

    .line 728
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized issueCommand(Ljava/lang/String;I)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "expect"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1476
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p2, :cond_0

    .line 1482
    monitor-exit p0

    return-void

    .line 1481
    :cond_0
    :try_start_1
    new-instance v0, Ljavax/mail/MessagingException;

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1475
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "cmd":Ljava/lang/String;
    .end local p2    # "expect":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected mailFrom()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 984
    const/4 v0, 0x0

    .line 985
    .local v0, "from":Ljava/lang/String;
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v2, v1, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v2, :cond_0

    .line 986
    check-cast v1, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPMessage;->getEnvelopeFrom()Ljava/lang/String;

    move-result-object v0

    .line 987
    :cond_0
    const-string v1, "mail."

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    .line 988
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".from"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_5

    .line 992
    :cond_3
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v2

    move-object v3, v2

    .local v3, "fa":[Ljavax/mail/Address;
    if-eqz v2, :cond_4

    .line 993
    array-length v2, v3

    if-lez v2, :cond_4

    .line 994
    const/4 v2, 0x0

    aget-object v2, v3, v2

    .local v2, "me":Ljavax/mail/Address;
    goto :goto_0

    .line 996
    .end local v2    # "me":Ljavax/mail/Address;
    .end local v3    # "fa":[Ljavax/mail/Address;
    :cond_4
    iget-object v2, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v2

    .line 998
    .restart local v2    # "me":Ljavax/mail/Address;
    :goto_0
    if-eqz v2, :cond_f

    .line 999
    move-object v3, v2

    check-cast v3, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v3}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .end local v2    # "me":Ljavax/mail/Address;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MAIL FROM:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, "cmd":Ljava/lang/String;
    const-string v3, "DSN"

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1009
    const/4 v3, 0x0

    .line 1010
    .local v3, "ret":Ljava/lang/String;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v5, v4, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v5, :cond_6

    .line 1011
    check-cast v4, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNRet()Ljava/lang/String;

    move-result-object v3

    .line 1012
    :cond_6
    if-nez v3, :cond_7

    .line 1013
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".dsn.ret"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1015
    :cond_7
    if-eqz v3, :cond_8

    .line 1016
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " RET="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1024
    .end local v3    # "ret":Ljava/lang/String;
    :cond_8
    const-string v3, "AUTH"

    invoke-virtual {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1025
    const/4 v3, 0x0

    .line 1026
    .local v3, "submitter":Ljava/lang/String;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v5, v4, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v5, :cond_9

    .line 1027
    check-cast v4, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPMessage;->getSubmitter()Ljava/lang/String;

    move-result-object v3

    .line 1028
    :cond_9
    if-nez v3, :cond_a

    .line 1029
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".submitter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1031
    :cond_a
    if-eqz v3, :cond_b

    .line 1033
    :try_start_0
    invoke-static {v3}, Lcom/sun/mail/smtp/SMTPTransport;->xtext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1034
    .local v4, "s":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " AUTH="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    goto :goto_1

    .line 1035
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 1036
    .local v4, "ex":Ljava/lang/IllegalArgumentException;
    iget-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v5, :cond_b

    .line 1037
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEBUG SMTP: ignoring invalid submitter: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1037
    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1046
    .end local v3    # "submitter":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_b
    :goto_1
    const/4 v3, 0x0

    .line 1047
    .local v3, "ext":Ljava/lang/String;
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v5, v4, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v5, :cond_c

    .line 1048
    check-cast v4, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v4}, Lcom/sun/mail/smtp/SMTPMessage;->getMailExtension()Ljava/lang/String;

    move-result-object v3

    .line 1049
    :cond_c
    if-nez v3, :cond_d

    .line 1050
    iget-object v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".mailextension"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1051
    :cond_d
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1054
    :cond_e
    const/16 v1, 0xfa

    invoke-direct {p0, v2, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueSendCommand(Ljava/lang/String;I)V

    .line 1055
    return-void

    .line 1001
    .end local v3    # "ext":Ljava/lang/String;
    .local v2, "me":Ljavax/mail/Address;
    :cond_f
    new-instance v1, Ljavax/mail/MessagingException;

    .line 1002
    nop

    .line 1001
    const-string v3, "can\'t determine local email address"

    invoke-direct {v1, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 19
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "passwd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 372
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".ehlo"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 373
    .local v8, "ehloStr":Ljava/lang/String;
    const/4 v10, 0x0

    if-eqz v8, :cond_0

    const-string v0, "false"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v11, v0

    .line 375
    .local v11, "useEhlo":Z
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".auth"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 376
    .local v12, "authStr":Ljava/lang/String;
    if-eqz v12, :cond_1

    const-string/jumbo v0, "true"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v10

    :goto_1
    move v13, v0

    .line 378
    .local v13, "useAuth":Z
    iget-boolean v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG SMTP: useEhlo "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 380
    const-string v4, ", useAuth "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 388
    :cond_2
    if-eqz v13, :cond_4

    if-eqz p3, :cond_3

    if-nez p4, :cond_4

    .line 389
    :cond_3
    return v10

    .line 395
    :cond_4
    const/4 v0, -0x1

    move/from16 v2, p2

    if-ne v2, v0, :cond_6

    .line 396
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".port"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "portstring":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 398
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v14, v2

    .end local p2    # "port":I
    .local v2, "port":I
    goto :goto_2

    .line 400
    .end local v2    # "port":I
    .restart local p2    # "port":I
    :cond_5
    iget v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->defaultPort:I

    move v14, v2

    .end local p2    # "port":I
    .restart local v2    # "port":I
    goto :goto_2

    .line 395
    .end local v0    # "portstring":Ljava/lang/String;
    .end local v2    # "port":I
    .restart local p2    # "port":I
    :cond_6
    move v14, v2

    .line 404
    .end local p2    # "port":I
    .local v14, "port":I
    :goto_2
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v15, p1

    goto :goto_4

    .line 405
    :cond_8
    :goto_3
    const-string v0, "localhost"

    move-object v15, v0

    .line 407
    .end local p1    # "host":Ljava/lang/String;
    .local v15, "host":Ljava/lang/String;
    :goto_4
    const/4 v0, 0x0

    .line 409
    .local v0, "succeed":Z
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v2, :cond_9

    .line 410
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->openServer()V

    goto :goto_5

    .line 412
    :cond_9
    invoke-direct {v1, v15, v14}, Lcom/sun/mail/smtp/SMTPTransport;->openServer(Ljava/lang/String;I)V

    .line 414
    :goto_5
    if-eqz v11, :cond_a

    .line 415
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    move-result v0

    move/from16 v16, v0

    goto :goto_6

    .line 414
    :cond_a
    move/from16 v16, v0

    .line 416
    .end local v0    # "succeed":Z
    .local v16, "succeed":Z
    :goto_6
    if-nez v16, :cond_b

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->helo(Ljava/lang/String;)V

    .line 419
    :cond_b
    iget-boolean v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z

    if-eqz v0, :cond_c

    const-string v0, "STARTTLS"

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getLocalHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->ehlo(Ljava/lang/String;)Z

    .line 429
    :cond_c
    if-nez v13, :cond_d

    if-eqz p3, :cond_1f

    if-eqz p4, :cond_1f

    .line 430
    :cond_d
    const-string v0, "AUTH"

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "AUTH=LOGIN"

    if-nez v0, :cond_e

    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 431
    :cond_e
    iget-boolean v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    const-string v3, "LOGIN"

    if-eqz v0, :cond_f

    .line 432
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG SMTP: Attempt to authenticate"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 434
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 435
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG SMTP: use AUTH=LOGIN hack"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 438
    :cond_f
    invoke-virtual {v1, v3}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v0

    const v3, 0x7fffffff

    const/16 v7, 0x14e

    const/16 v6, 0xeb

    if-nez v0, :cond_1a

    .line 439
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v2, v6

    move v0, v7

    goto/16 :goto_c

    .line 491
    :cond_10
    const-string v0, "PLAIN"

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 493
    const-string v0, "AUTH PLAIN"

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v2

    .line 495
    .local v2, "resp":I
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 497
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v4, v0, v3}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 496
    move-object v3, v4

    .line 498
    .local v3, "b64os":Ljava/io/OutputStream;
    if-ne v2, v7, :cond_11

    .line 501
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write(I)V

    .line 502
    invoke-static/range {p3 .. p3}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 503
    invoke-virtual {v3, v10}, Ljava/io/OutputStream;->write(I)V

    .line 504
    invoke-static/range {p4 .. p4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 505
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 508
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    .line 512
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "b64os":Ljava/io/OutputStream;
    :cond_11
    if-eq v2, v6, :cond_1f

    .line 513
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 514
    return v10

    .line 511
    :catchall_0
    move-exception v0

    .line 512
    if-eq v2, v6, :cond_12

    .line 513
    goto :goto_7

    .line 516
    :cond_12
    throw v0

    .line 510
    :catch_0
    move-exception v0

    .line 512
    if-eq v2, v6, :cond_1f

    .line 513
    goto :goto_7

    .line 517
    .end local v2    # "resp":I
    :cond_13
    const-string v0, "DIGEST-MD5"

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsAuthentication(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 518
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getMD5()Lcom/sun/mail/smtp/DigestMD5;

    move-result-object v0

    move-object v5, v0

    .local v5, "md5":Lcom/sun/mail/smtp/DigestMD5;
    if-eqz v0, :cond_19

    .line 519
    const-string v0, "AUTH DIGEST-MD5"

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v4

    .line 521
    .local v4, "resp":I
    if-ne v4, v7, :cond_18

    .line 522
    nop

    .line 523
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->getSASLRealm()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 522
    move-object v2, v5

    move-object/from16 v17, v3

    move-object v3, v15

    move/from16 v18, v4

    .end local v4    # "resp":I
    .local v18, "resp":I
    move-object/from16 v4, p3

    move-object v9, v5

    .end local v5    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    .local v9, "md5":Lcom/sun/mail/smtp/DigestMD5;
    move-object/from16 v5, p4

    move-object v6, v0

    move v0, v7

    move-object/from16 v7, v17

    :try_start_2
    invoke-virtual/range {v2 .. v7}, Lcom/sun/mail/smtp/DigestMD5;->authClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 524
    .local v2, "b":[B
    invoke-virtual {v1, v2}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v4, v3

    .line 525
    .end local v18    # "resp":I
    .restart local v4    # "resp":I
    if-ne v4, v0, :cond_15

    .line 526
    :try_start_3
    iget-object v0, v1, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v9, v0}, Lcom/sun/mail/smtp/DigestMD5;->authServer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 528
    const/4 v4, -0x1

    const/16 v2, 0xeb

    goto :goto_b

    .line 531
    :cond_14
    new-array v0, v10, [B

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v4, v0

    .end local v2    # "b":[B
    const/16 v2, 0xeb

    goto :goto_b

    .line 535
    :catch_1
    move-exception v0

    goto :goto_8

    .line 525
    .restart local v2    # "b":[B
    :cond_15
    const/16 v2, 0xeb

    goto :goto_b

    .line 538
    .end local v2    # "b":[B
    .end local v4    # "resp":I
    .restart local v18    # "resp":I
    :catchall_1
    move-exception v0

    move/from16 v4, v18

    const/16 v2, 0xeb

    goto :goto_a

    .line 535
    :catch_2
    move-exception v0

    move/from16 v4, v18

    goto :goto_8

    .line 538
    .end local v9    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    .end local v18    # "resp":I
    .restart local v4    # "resp":I
    .restart local v5    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    :catchall_2
    move-exception v0

    move/from16 v18, v4

    move-object v9, v5

    move v2, v6

    .end local v4    # "resp":I
    .end local v5    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    .restart local v9    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    .restart local v18    # "resp":I
    goto :goto_a

    .line 535
    .end local v9    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    .end local v18    # "resp":I
    .restart local v4    # "resp":I
    .restart local v5    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    :catch_3
    move-exception v0

    move/from16 v18, v4

    move-object v9, v5

    .line 536
    .end local v5    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v9    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    :goto_8
    :try_start_4
    iget-boolean v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v2, :cond_16

    .line 537
    iget-object v2, v1, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG SMTP: DIGEST-MD5: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 539
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_16
    const/16 v2, 0xeb

    if-eq v4, v2, :cond_1f

    .line 540
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 541
    return v10

    .line 538
    :catchall_3
    move-exception v0

    const/16 v2, 0xeb

    .line 539
    :goto_a
    if-eq v4, v2, :cond_17

    .line 540
    goto :goto_9

    .line 543
    :cond_17
    throw v0

    .line 521
    .end local v9    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    .restart local v5    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    :cond_18
    move/from16 v18, v4

    move-object v9, v5

    move v2, v6

    .line 539
    .end local v5    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    .restart local v9    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    :goto_b
    if-eq v4, v2, :cond_1f

    .line 540
    goto :goto_9

    .line 518
    .end local v4    # "resp":I
    .end local v9    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    .restart local v5    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    :cond_19
    move-object v9, v5

    .end local v5    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    .restart local v9    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    goto :goto_e

    .line 438
    .end local v9    # "md5":Lcom/sun/mail/smtp/DigestMD5;
    :cond_1a
    move v2, v6

    move v0, v7

    .line 441
    :goto_c
    const-string v4, "AUTH LOGIN"

    invoke-virtual {v1, v4}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v5

    .line 447
    .local v5, "resp":I
    const/16 v6, 0x212

    if-ne v5, v6, :cond_1b

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->startTLS()V

    .line 449
    invoke-virtual {v1, v4}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand(Ljava/lang/String;)I

    move-result v5

    .line 462
    :cond_1b
    :try_start_5
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 464
    .local v4, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Lcom/sun/mail/util/BASE64EncoderStream;

    invoke-direct {v6, v4, v3}, Lcom/sun/mail/util/BASE64EncoderStream;-><init>(Ljava/io/OutputStream;I)V

    .line 463
    move-object v3, v6

    .line 466
    .restart local v3    # "b64os":Ljava/io/OutputStream;
    if-ne v5, v0, :cond_1c

    .line 468
    invoke-static/range {p3 .. p3}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStream;->write([B)V

    .line 469
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 472
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v6

    move v5, v6

    .line 473
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 475
    :cond_1c
    if-ne v5, v0, :cond_1d

    .line 477
    invoke-static/range {p4 .. p4}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 478
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 481
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/mail/smtp/SMTPTransport;->simpleCommand([B)I

    move-result v0

    move v5, v0

    .line 482
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 486
    .end local v3    # "b64os":Ljava/io/OutputStream;
    .end local v4    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_1d
    if-eq v5, v2, :cond_1f

    .line 487
    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 488
    return v10

    .line 485
    :catchall_4
    move-exception v0

    .line 486
    if-eq v5, v2, :cond_1e

    .line 487
    goto :goto_d

    .line 490
    :cond_1e
    throw v0

    .line 484
    :catch_4
    move-exception v0

    .line 486
    if-eq v5, v2, :cond_1f

    .line 487
    goto :goto_d

    .line 548
    .end local v5    # "resp":I
    :cond_1f
    :goto_e
    const/4 v2, 0x1

    return v2
.end method

.method protected rcptTo()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1079
    move-object/from16 v7, p0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v8, v0

    .line 1080
    .local v8, "valid":Ljava/util/Vector;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v9, v0

    .line 1081
    .local v9, "validUnsent":Ljava/util/Vector;
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move-object v10, v0

    .line 1082
    .local v10, "invalid":Ljava/util/Vector;
    const/4 v0, -0x1

    .line 1083
    .local v0, "retCode":I
    const/4 v1, 0x0

    .line 1084
    .local v1, "mex":Ljavax/mail/MessagingException;
    const/4 v2, 0x0

    .line 1085
    .local v2, "sendFailed":Z
    const/4 v3, 0x0

    .line 1086
    .local v3, "sfex":Ljavax/mail/MessagingException;
    const/4 v4, 0x0

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1087
    const/4 v4, 0x0

    .line 1088
    .local v4, "sendPartial":Z
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v6, v5, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v6, :cond_0

    .line 1089
    check-cast v5, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v5}, Lcom/sun/mail/smtp/SMTPMessage;->getSendPartial()Z

    move-result v4

    .line 1090
    :cond_0
    const-string v5, "mail."

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 1091
    iget-object v11, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".sendpartial"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1092
    .local v11, "sp":Ljava/lang/String;
    if-eqz v11, :cond_1

    const-string/jumbo v12, "true"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    move v12, v6

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    move v4, v12

    move v11, v4

    goto :goto_1

    .line 1090
    .end local v11    # "sp":Ljava/lang/String;
    :cond_2
    move v11, v4

    .line 1094
    .end local v4    # "sendPartial":Z
    .local v11, "sendPartial":Z
    :goto_1
    iget-boolean v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v4, :cond_3

    if-eqz v11, :cond_3

    .line 1095
    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v12, "DEBUG SMTP: sendPartial set"

    invoke-virtual {v4, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1097
    :cond_3
    const/4 v4, 0x0

    .line 1098
    .local v4, "dsn":Z
    const/4 v12, 0x0

    .line 1099
    .local v12, "notify":Ljava/lang/String;
    const-string v13, "DSN"

    invoke-virtual {v7, v13}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1100
    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    instance-of v14, v13, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v14, :cond_4

    .line 1101
    check-cast v13, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v13}, Lcom/sun/mail/smtp/SMTPMessage;->getDSNNotify()Ljava/lang/String;

    move-result-object v12

    .line 1102
    :cond_4
    if-nez v12, :cond_5

    .line 1103
    iget-object v13, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".dsn.notify"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    .line 1105
    :cond_5
    if-eqz v12, :cond_6

    .line 1106
    const/4 v4, 0x1

    move-object v13, v12

    move v12, v4

    goto :goto_2

    .line 1105
    :cond_6
    move-object v13, v12

    move v12, v4

    goto :goto_2

    .line 1099
    :cond_7
    move-object v13, v12

    move v12, v4

    .line 1110
    .end local v4    # "dsn":Z
    .local v12, "dsn":Z
    .local v13, "notify":Ljava/lang/String;
    :goto_2
    const/4 v4, 0x0

    move v14, v0

    move-object v15, v1

    move-object/from16 v16, v3

    .end local v0    # "retCode":I
    .end local v1    # "mex":Ljavax/mail/MessagingException;
    .end local v3    # "sfex":Ljavax/mail/MessagingException;
    .local v4, "i":I
    .local v14, "retCode":I
    .local v15, "mex":Ljavax/mail/MessagingException;
    .local v16, "sfex":Ljavax/mail/MessagingException;
    :goto_3
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    array-length v1, v0

    const-string v5, "RSET"

    const/16 v3, 0xfa

    if-lt v4, v1, :cond_17

    .line 1204
    .end local v4    # "i":I
    if-eqz v11, :cond_8

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 1205
    const/4 v2, 0x1

    move/from16 v17, v2

    goto :goto_4

    .line 1208
    :cond_8
    move/from16 v17, v2

    .end local v2    # "sendFailed":Z
    .local v17, "sendFailed":Z
    :goto_4
    if-eqz v17, :cond_b

    .line 1210
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1211
    invoke-virtual {v10, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1214
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1215
    const/4 v0, 0x0

    .line 1216
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_a

    .line 1218
    .end local v1    # "j":I
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_6
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_9

    .end local v1    # "j":I
    goto :goto_8

    .line 1219
    .restart local v1    # "j":I
    :cond_9
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v9, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/mail/Address;

    aput-object v6, v2, v0

    .line 1218
    add-int/lit8 v1, v1, 0x1

    move v0, v4

    goto :goto_6

    .line 1217
    .end local v4    # "i":I
    .restart local v0    # "i":I
    :cond_a
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {v8, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/mail/Address;

    aput-object v6, v2, v0

    .line 1216
    add-int/lit8 v1, v1, 0x1

    move v0, v4

    goto :goto_5

    .line 1220
    .end local v1    # "j":I
    .end local v4    # "i":I
    :cond_b
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v0, :cond_d

    if-eqz v11, :cond_c

    .line 1221
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    if-gtz v0, :cond_d

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_c

    goto :goto_7

    .line 1239
    :cond_c
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    goto :goto_8

    .line 1224
    :cond_d
    :goto_7
    iput-boolean v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 1225
    iput-object v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 1228
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1229
    invoke-virtual {v10, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1232
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1233
    invoke-virtual {v9, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1236
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/Address;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1237
    invoke-virtual {v8, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 1244
    :goto_8
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_13

    .line 1245
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    const-string v1, "DEBUG SMTP:   "

    if-eqz v0, :cond_f

    array-length v0, v0

    if-lez v0, :cond_f

    .line 1246
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Verified Addresses"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1247
    const/4 v0, 0x0

    .local v0, "l":I
    :goto_9
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-lt v0, v2, :cond_e

    goto :goto_a

    .line 1248
    :cond_e
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1247
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1251
    .end local v0    # "l":I
    :cond_f
    :goto_a
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_11

    array-length v0, v0

    if-lez v0, :cond_11

    .line 1252
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Valid Unsent Addresses"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1253
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_b
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-lt v0, v2, :cond_10

    goto :goto_c

    .line 1254
    :cond_10
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1253
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 1257
    .end local v0    # "j":I
    :cond_11
    :goto_c
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    if-eqz v0, :cond_13

    array-length v0, v0

    if-lez v0, :cond_13

    .line 1258
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG SMTP: Invalid Addresses"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1259
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_d
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    array-length v2, v2

    if-lt v0, v2, :cond_12

    goto :goto_e

    .line 1260
    :cond_12
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    aget-object v6, v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1259
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1266
    .end local v0    # "k":I
    :cond_13
    :goto_e
    if-eqz v17, :cond_16

    .line 1267
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_14

    .line 1268
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG SMTP: Sending failed because of invalid destination addresses"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1270
    :cond_14
    const/4 v2, 0x2

    .line 1271
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 1272
    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 1270
    move-object/from16 v18, v1

    move-object/from16 v1, p0

    move-object v3, v0

    move-object v0, v5

    move-object v5, v6

    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 1275
    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1276
    .local v6, "lsr":Ljava/lang/String;
    iget v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1278
    .local v5, "lrc":I
    :try_start_0
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v1, :cond_15

    .line 1279
    const/16 v1, 0xfa

    invoke-virtual {v7, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1290
    :cond_15
    :goto_f
    iput-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1291
    iput v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    goto :goto_10

    .line 1289
    :catchall_0
    move-exception v0

    move/from16 v20, v14

    move v14, v5

    goto :goto_11

    .line 1280
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1283
    .local v1, "ex":Ljavax/mail/MessagingException;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_f

    .line 1284
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1286
    .local v0, "ex2":Ljavax/mail/MessagingException;
    :try_start_2
    iget-boolean v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_15

    .line 1287
    :try_start_3
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljavax/mail/MessagingException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_f

    .line 1294
    .end local v0    # "ex2":Ljavax/mail/MessagingException;
    .end local v1    # "ex":Ljavax/mail/MessagingException;
    :goto_10
    new-instance v18, Ljavax/mail/SendFailedException;

    .line 1295
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 1296
    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 1294
    const-string v1, "Invalid Addresses"

    move-object/from16 v0, v18

    move-object/from16 v19, v2

    move-object v2, v15

    move/from16 v20, v14

    move v14, v5

    .end local v5    # "lrc":I
    .local v14, "lrc":I
    .local v20, "retCode":I
    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Ljavax/mail/SendFailedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    throw v18

    .line 1289
    .end local v20    # "retCode":I
    .restart local v5    # "lrc":I
    .local v14, "retCode":I
    :catchall_1
    move-exception v0

    move/from16 v20, v14

    move v14, v5

    .line 1290
    .end local v5    # "lrc":I
    .local v14, "lrc":I
    .restart local v20    # "retCode":I
    :goto_11
    iput-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1291
    iput v14, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1292
    throw v0

    .line 1298
    .end local v6    # "lsr":Ljava/lang/String;
    .end local v20    # "retCode":I
    .local v14, "retCode":I
    :cond_16
    return-void

    .line 1112
    .end local v17    # "sendFailed":Z
    .restart local v2    # "sendFailed":Z
    .restart local v4    # "i":I
    :cond_17
    move v1, v3

    move-object v3, v5

    move/from16 v20, v14

    .end local v14    # "retCode":I
    .restart local v20    # "retCode":I
    const/4 v5, 0x0

    .line 1113
    .end local v16    # "sfex":Ljavax/mail/MessagingException;
    .local v5, "sfex":Ljavax/mail/MessagingException;
    aget-object v0, v0, v4

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    .line 1114
    .local v0, "ia":Ljavax/mail/internet/InternetAddress;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v6, "RCPT TO:"

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/sun/mail/smtp/SMTPTransport;->normalizeAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1115
    .local v6, "cmd":Ljava/lang/String;
    if-eqz v12, :cond_18

    .line 1116
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " NOTIFY="

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1118
    :cond_18
    invoke-virtual {v7, v6}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1120
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v14

    .line 1121
    .end local v20    # "retCode":I
    .restart local v14    # "retCode":I
    const/16 v1, 0xfa

    if-eq v14, v1, :cond_24

    const/16 v1, 0xfb

    if-eq v14, v1, :cond_24

    const/16 v1, 0x1f5

    if-eq v14, v1, :cond_1f

    const/16 v1, 0x1f7

    if-eq v14, v1, :cond_1f

    packed-switch v14, :pswitch_data_0

    packed-switch v14, :pswitch_data_1

    .line 1169
    const/16 v1, 0x190

    if-lt v14, v1, :cond_19

    const/16 v1, 0x1f3

    if-gt v14, v1, :cond_19

    .line 1171
    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_12

    .line 1172
    :cond_19
    const/16 v1, 0x1f4

    if-lt v14, v1, :cond_1c

    const/16 v1, 0x257

    if-gt v14, v1, :cond_1c

    .line 1174
    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1189
    :goto_12
    if-nez v11, :cond_1a

    .line 1190
    const/4 v2, 0x1

    .line 1192
    :cond_1a
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1193
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1192
    invoke-direct {v1, v0, v6, v14, v3}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1194
    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .local v1, "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_1b

    .line 1195
    move-object v3, v1

    move-object v15, v3

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .local v3, "mex":Ljavax/mail/MessagingException;
    goto/16 :goto_18

    .line 1197
    .end local v3    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_1b
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    goto/16 :goto_18

    .line 1177
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .restart local v5    # "sfex":Ljavax/mail/MessagingException;
    :cond_1c
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_1d

    .line 1178
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    move/from16 v17, v2

    .end local v2    # "sendFailed":Z
    .restart local v17    # "sendFailed":Z
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v18, v5

    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .local v18, "sfex":Ljavax/mail/MessagingException;
    const-string v5, "DEBUG SMTP: got response code "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1179
    const-string v5, ", with response: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1178
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_13

    .line 1177
    .end local v17    # "sendFailed":Z
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .restart local v2    # "sendFailed":Z
    .restart local v5    # "sfex":Ljavax/mail/MessagingException;
    :cond_1d
    move/from16 v17, v2

    move-object/from16 v18, v5

    .line 1180
    .end local v2    # "sendFailed":Z
    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .restart local v17    # "sendFailed":Z
    .restart local v18    # "sfex":Ljavax/mail/MessagingException;
    :goto_13
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1181
    .local v1, "_lsr":Ljava/lang/String;
    iget v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1182
    .local v2, "_lrc":I
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    if-eqz v5, :cond_1e

    .line 1183
    const/16 v5, 0xfa

    invoke-virtual {v7, v3, v5}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1184
    :cond_1e
    iput-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1185
    iput v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1186
    new-instance v3, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1187
    nop

    .line 1186
    invoke-direct {v3, v0, v6, v14, v1}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    throw v3

    .line 1121
    .end local v1    # "_lsr":Ljava/lang/String;
    .end local v17    # "sendFailed":Z
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .local v2, "sendFailed":Z
    .restart local v5    # "sfex":Ljavax/mail/MessagingException;
    :pswitch_0
    move/from16 v17, v2

    move-object/from16 v18, v5

    .end local v2    # "sendFailed":Z
    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .restart local v17    # "sendFailed":Z
    .restart local v18    # "sfex":Ljavax/mail/MessagingException;
    goto :goto_14

    .end local v17    # "sendFailed":Z
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .restart local v2    # "sendFailed":Z
    .restart local v5    # "sfex":Ljavax/mail/MessagingException;
    :cond_1f
    :pswitch_1
    move/from16 v17, v2

    move-object/from16 v18, v5

    .end local v2    # "sendFailed":Z
    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .restart local v17    # "sendFailed":Z
    .restart local v18    # "sfex":Ljavax/mail/MessagingException;
    goto :goto_16

    .line 1155
    :goto_14
    if-nez v11, :cond_20

    .line 1156
    const/4 v2, 0x1

    .end local v17    # "sendFailed":Z
    .restart local v2    # "sendFailed":Z
    goto :goto_15

    .line 1155
    .end local v2    # "sendFailed":Z
    .restart local v17    # "sendFailed":Z
    :cond_20
    move/from16 v2, v17

    .line 1157
    .end local v17    # "sendFailed":Z
    .restart local v2    # "sendFailed":Z
    :goto_15
    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1159
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1160
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1159
    invoke-direct {v1, v0, v6, v14, v3}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1161
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .local v1, "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_21

    .line 1162
    move-object v3, v1

    move-object v15, v3

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .restart local v3    # "mex":Ljavax/mail/MessagingException;
    goto :goto_18

    .line 1164
    .end local v3    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_21
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 1165
    goto :goto_18

    .line 1141
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .end local v2    # "sendFailed":Z
    .restart local v17    # "sendFailed":Z
    .restart local v18    # "sfex":Ljavax/mail/MessagingException;
    :goto_16
    if-nez v11, :cond_22

    .line 1142
    const/4 v2, 0x1

    .end local v17    # "sendFailed":Z
    .restart local v2    # "sendFailed":Z
    goto :goto_17

    .line 1141
    .end local v2    # "sendFailed":Z
    .restart local v17    # "sendFailed":Z
    :cond_22
    move/from16 v2, v17

    .line 1143
    .end local v17    # "sendFailed":Z
    .restart local v2    # "sendFailed":Z
    :goto_17
    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1145
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressFailedException;

    .line 1146
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1145
    invoke-direct {v1, v0, v6, v14, v3}, Lcom/sun/mail/smtp/SMTPAddressFailedException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1147
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .restart local v1    # "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_23

    .line 1148
    move-object v3, v1

    move-object v15, v3

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .restart local v3    # "mex":Ljavax/mail/MessagingException;
    goto :goto_18

    .line 1150
    .end local v3    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_23
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 1151
    goto :goto_18

    .line 1121
    .end local v1    # "sfex":Ljavax/mail/MessagingException;
    .restart local v5    # "sfex":Ljavax/mail/MessagingException;
    :cond_24
    move/from16 v17, v2

    move-object/from16 v18, v5

    .line 1123
    .end local v2    # "sendFailed":Z
    .end local v5    # "sfex":Ljavax/mail/MessagingException;
    .restart local v17    # "sendFailed":Z
    .restart local v18    # "sfex":Ljavax/mail/MessagingException;
    invoke-virtual {v8, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1124
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z

    if-nez v1, :cond_25

    .line 1125
    move/from16 v2, v17

    move-object/from16 v1, v18

    goto :goto_18

    .line 1131
    :cond_25
    new-instance v1, Lcom/sun/mail/smtp/SMTPAddressSucceededException;

    .line 1132
    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1131
    invoke-direct {v1, v0, v6, v14, v2}, Lcom/sun/mail/smtp/SMTPAddressSucceededException;-><init>(Ljavax/mail/internet/InternetAddress;Ljava/lang/String;ILjava/lang/String;)V

    .line 1133
    .end local v18    # "sfex":Ljavax/mail/MessagingException;
    .restart local v1    # "sfex":Ljavax/mail/MessagingException;
    if-nez v15, :cond_26

    .line 1134
    move-object v2, v1

    move-object v15, v2

    move/from16 v2, v17

    .end local v15    # "mex":Ljavax/mail/MessagingException;
    .local v2, "mex":Ljavax/mail/MessagingException;
    goto :goto_18

    .line 1136
    .end local v2    # "mex":Ljavax/mail/MessagingException;
    .restart local v15    # "mex":Ljavax/mail/MessagingException;
    :cond_26
    invoke-virtual {v15, v1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    .line 1137
    move/from16 v2, v17

    .line 1110
    .end local v0    # "ia":Ljavax/mail/internet/InternetAddress;
    .end local v6    # "cmd":Ljava/lang/String;
    .end local v17    # "sendFailed":Z
    .local v2, "sendFailed":Z
    :goto_18
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v16, v1

    const/4 v6, 0x1

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1c2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x226
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected readServerResponse()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1578
    nop

    .line 1579
    const-string v0, ""

    .line 1580
    .local v0, "serverResponse":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1581
    .local v1, "returnCode":I
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1586
    .local v2, "buf":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 1589
    .local v3, "line":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->lineInputStream:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 1590
    const/4 v5, -0x1

    if-nez v3, :cond_3

    .line 1591
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 1592
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1593
    const-string v6, "[EOF]"

    move-object v0, v6

    .line 1594
    :cond_1
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1595
    iput v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1596
    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v6, :cond_2

    .line 1597
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DEBUG SMTP: EOF: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1598
    :cond_2
    return v5

    .line 1600
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1601
    const-string v6, "\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1602
    invoke-direct {p0, v3}, Lcom/sun/mail/smtp/SMTPTransport;->isNotLastLine(Ljava/lang/String;)Z

    move-result v6

    .line 1588
    if-nez v6, :cond_0

    .line 1604
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v0, v6

    .line 1620
    .end local v3    # "line":Ljava/lang/String;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x3

    if-lt v3, v6, :cond_6

    .line 1622
    :try_start_1
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v3

    goto :goto_2

    .line 1632
    :catch_0
    move-exception v3

    .line 1635
    .local v3, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1636
    :catch_1
    move-exception v4

    .line 1638
    .local v4, "mex":Ljavax/mail/MessagingException;
    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v6, :cond_4

    .line 1639
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v6}, Ljavax/mail/MessagingException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1641
    .end local v4    # "mex":Ljavax/mail/MessagingException;
    :cond_4
    :goto_0
    const/4 v1, -0x1

    .end local v3    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_2

    .line 1623
    :catch_2
    move-exception v3

    .line 1625
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->close()V
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 1626
    :catch_3
    move-exception v4

    .line 1628
    .restart local v4    # "mex":Ljavax/mail/MessagingException;
    iget-boolean v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v6, :cond_5

    .line 1629
    iget-object v6, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v6}, Ljavax/mail/MessagingException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1631
    .end local v4    # "mex":Ljavax/mail/MessagingException;
    :cond_5
    :goto_1
    const/4 v1, -0x1

    .end local v3    # "nfe":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 1644
    :cond_6
    const/4 v1, -0x1

    .line 1646
    :goto_2
    if-ne v1, v5, :cond_7

    iget-boolean v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v3, :cond_7

    .line 1647
    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG SMTP: bad server response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1649
    :cond_7
    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1650
    iput v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1651
    return v1

    .line 1605
    :catch_4
    move-exception v3

    .line 1606
    .local v3, "ioex":Ljava/io/IOException;
    iget-boolean v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v5, :cond_8

    .line 1607
    iget-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEBUG SMTP: exception reading response: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1609
    :cond_8
    const-string v5, ""

    iput-object v5, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    .line 1610
    iput v4, p0, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 1611
    new-instance v4, Ljavax/mail/MessagingException;

    const-string v5, "Exception reading response"

    invoke-direct {v4, v5, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method

.method protected sendCommand(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1551
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    .line 1552
    return-void
.end method

.method public declared-synchronized sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    .locals 21
    .param p1, "message"    # Ljavax/mail/Message;
    .param p2, "addresses"    # [Ljavax/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljavax/mail/SendFailedException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    monitor-enter p0

    .line 590
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->checkConnected()V

    .line 594
    instance-of v0, v8, Ljavax/mail/internet/MimeMessage;

    if-nez v0, :cond_1

    .line 595
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG SMTP: Can only send RFC822 msgs"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 597
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :cond_0
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "SMTP can only send RFC822 messages"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, v9

    if-lt v0, v1, :cond_b

    .line 606
    .end local v0    # "i":I
    move-object v0, v8

    check-cast v0, Ljavax/mail/internet/MimeMessage;

    iput-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 607
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 608
    iput-object v9, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 609
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->expandGroups()V

    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, "use8bit":Z
    instance-of v1, v8, Lcom/sun/mail/smtp/SMTPMessage;

    if-eqz v1, :cond_2

    .line 613
    move-object v1, v8

    check-cast v1, Lcom/sun/mail/smtp/SMTPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/smtp/SMTPMessage;->getAllow8bitMIME()Z

    move-result v1

    move v0, v1

    .line 614
    :cond_2
    const/4 v10, 0x0

    if-nez v0, :cond_4

    .line 616
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".allow8bitmime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 615
    nop

    .line 617
    .local v1, "ebStr":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v10

    :goto_1
    move v0, v2

    move v11, v0

    goto :goto_2

    .line 614
    .end local v1    # "ebStr":Ljava/lang/String;
    :cond_4
    move v11, v0

    .line 619
    .end local v0    # "use8bit":Z
    .local v11, "use8bit":Z
    :goto_2
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v0, :cond_5

    .line 620
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG SMTP: use8bit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    :cond_5
    if-eqz v11, :cond_6

    const-string v0, "8BITMIME"

    invoke-virtual {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->supportsExtension(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 622
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-direct {v7, v0}, Lcom/sun/mail/smtp/SMTPTransport;->convertTo8Bit(Ljavax/mail/internet/MimePart;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_6

    .line 626
    :try_start_1
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_3

    .line 627
    :catch_0
    move-exception v0

    .line 634
    :cond_6
    :goto_3
    const/4 v12, 0x0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->mailFrom()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->rcptTo()V

    .line 636
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->data()Ljava/io/OutputStream;

    move-result-object v1

    sget-object v2, Lcom/sun/mail/smtp/SMTPTransport;->ignoreList:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->finishData()V

    .line 638
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    .line 641
    :try_start_4
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_7

    .line 642
    :try_start_5
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG SMTP: Sending partially failed because of invalid destination addresses"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 644
    :cond_7
    nop

    .line 645
    const/4 v2, 0x3

    .line 646
    :try_start_6
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 647
    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 644
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 649
    new-instance v0, Lcom/sun/mail/smtp/SMTPSendFailedException;

    const-string v14, "."

    iget v15, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastReturnCode:I

    .line 650
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->lastServerResponse:Ljava/lang/String;

    iget-object v2, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 651
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    .line 649
    move-object v13, v0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-direct/range {v13 .. v20}, Lcom/sun/mail/smtp/SMTPSendFailedException;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;)V

    .end local v11    # "use8bit":Z
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    throw v0
    :try_end_6
    .catch Ljavax/mail/MessagingException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 664
    .restart local v11    # "use8bit":Z
    .restart local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .restart local p1    # "message":Ljavax/mail/Message;
    .restart local p2    # "addresses":[Ljavax/mail/Address;
    :catch_1
    move-exception v0

    goto :goto_4

    .line 653
    :cond_8
    const/4 v2, 0x1

    .line 654
    :try_start_7
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 655
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 653
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    :try_end_7
    .catch Ljavax/mail/MessagingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 680
    :try_start_8
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 681
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 682
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 683
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 684
    iput-boolean v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 686
    monitor-exit p0

    return-void

    .line 656
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    :catch_2
    move-exception v0

    goto :goto_6

    .line 678
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 664
    :catch_3
    move-exception v0

    :goto_4
    move-object v13, v0

    .line 665
    .local v13, "ex":Ljava/io/IOException;
    :try_start_9
    iget-boolean v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_9

    .line 666
    :try_start_a
    iget-object v0, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v13, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 670
    :cond_9
    :try_start_b
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V
    :try_end_b
    .catch Ljavax/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 671
    :catch_4
    move-exception v0

    .line 672
    :goto_5
    const/4 v2, 0x2

    .line 673
    :try_start_c
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 674
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 672
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 676
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException while sending message"

    .line 677
    nop

    .line 676
    invoke-direct {v0, v1, v13}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v11    # "use8bit":Z
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    throw v0

    .line 656
    .end local v13    # "ex":Ljava/io/IOException;
    .restart local v11    # "use8bit":Z
    .restart local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .restart local p1    # "message":Ljavax/mail/Message;
    .restart local p2    # "addresses":[Ljavax/mail/Address;
    :catch_5
    move-exception v0

    .line 657
    .local v0, "mex":Ljavax/mail/MessagingException;
    :goto_6
    iget-boolean v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->debug:Z

    if-eqz v1, :cond_a

    .line 658
    iget-object v1, v7, Lcom/sun/mail/smtp/SMTPTransport;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljavax/mail/MessagingException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 659
    :cond_a
    const/4 v2, 0x2

    .line 660
    iget-object v3, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    iget-object v4, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    .line 661
    iget-object v5, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iget-object v6, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 659
    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sun/mail/smtp/SMTPTransport;->notifyTransportListeners(I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V

    .line 663
    nop

    .end local v11    # "use8bit":Z
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 678
    .end local v0    # "mex":Ljavax/mail/MessagingException;
    .restart local v11    # "use8bit":Z
    .restart local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .restart local p1    # "message":Ljavax/mail/Message;
    .restart local p2    # "addresses":[Ljavax/mail/Address;
    :catchall_1
    move-exception v0

    .line 680
    :goto_7
    :try_start_d
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->invalidAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validUnsentAddr:[Ljavax/mail/Address;

    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->validSentAddr:[Ljavax/mail/Address;

    .line 681
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->addresses:[Ljavax/mail/Address;

    .line 682
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->message:Ljavax/mail/internet/MimeMessage;

    .line 683
    iput-object v12, v7, Lcom/sun/mail/smtp/SMTPTransport;->exception:Ljavax/mail/MessagingException;

    .line 684
    iput-boolean v10, v7, Lcom/sun/mail/smtp/SMTPTransport;->sendPartiallyFailed:Z

    .line 685
    throw v0

    .line 600
    .end local v11    # "use8bit":Z
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .local v0, "i":I
    :cond_b
    aget-object v1, v9, v0

    instance-of v1, v1, Ljavax/mail/internet/InternetAddress;

    if-eqz v1, :cond_c

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 601
    :cond_c
    new-instance v1, Ljavax/mail/MessagingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v9, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 602
    const-string v3, " is not an InternetAddress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 601
    invoke-direct {v1, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 589
    .end local v0    # "i":I
    .end local p1    # "message":Ljavax/mail/Message;
    .end local p2    # "addresses":[Ljavax/mail/Address;
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocalHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "localhost"    # Ljava/lang/String;

    monitor-enter p0

    .line 197
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->localHostName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return-void

    .line 196
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "localhost":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setReportSuccess(Z)V
    .locals 0
    .param p1, "reportSuccess"    # Z

    monitor-enter p0

    .line 267
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->reportSuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    .line 266
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "reportSuccess":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSASLRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "saslRealm"    # Ljava/lang/String;

    monitor-enter p0

    .line 238
    :try_start_0
    iput-object p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->saslRealm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 237
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "saslRealm":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStartTLS(Z)V
    .locals 0
    .param p1, "useStartTLS"    # Z

    monitor-enter p0

    .line 290
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useStartTLS:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 289
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "useStartTLS":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUseRset(Z)V
    .locals 0
    .param p1, "useRset"    # Z

    monitor-enter p0

    .line 314
    :try_start_0
    iput-boolean p1, p0, Lcom/sun/mail/smtp/SMTPTransport;->useRset:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 313
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "useRset":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized simpleCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1528
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1527
    .end local p0    # "this":Lcom/sun/mail/smtp/SMTPTransport;
    .end local p1    # "cmd":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected simpleCommand([B)I
    .locals 1
    .param p1, "cmd"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1539
    nop

    .line 1540
    invoke-direct {p0, p1}, Lcom/sun/mail/smtp/SMTPTransport;->sendCommand([B)V

    .line 1541
    invoke-virtual {p0}, Lcom/sun/mail/smtp/SMTPTransport;->readServerResponse()I

    move-result v0

    return v0
.end method

.method protected startTLS()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1331
    const-string v0, "STARTTLS"

    const/16 v1, 0xdc

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/smtp/SMTPTransport;->issueCommand(Ljava/lang/String;I)V

    .line 1334
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1335
    iget-object v1, p0, Lcom/sun/mail/smtp/SMTPTransport;->session:Ljavax/mail/Session;

    invoke-virtual {v1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/smtp/SMTPTransport;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1334
    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/SocketFetcher;->startTLS(Ljava/net/Socket;Ljava/util/Properties;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->serverSocket:Ljava/net/Socket;

    .line 1336
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->initStreams()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1342
    return-void

    .line 1337
    :catch_0
    move-exception v0

    .line 1338
    .local v0, "ioex":Ljava/io/IOException;
    invoke-direct {p0}, Lcom/sun/mail/smtp/SMTPTransport;->closeConnection()V

    .line 1339
    new-instance v1, Ljavax/mail/MessagingException;

    .line 1340
    nop

    .line 1339
    const-string v2, "Could not convert socket to TLS"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method protected supportsAuthentication(Ljava/lang/String;)Z
    .locals 5
    .param p1, "auth"    # Ljava/lang/String;

    .line 1722
    nop

    .line 1723
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1724
    return v1

    .line 1725
    :cond_0
    const-string v2, "AUTH"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1726
    .local v0, "a":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1727
    return v1

    .line 1728
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    invoke-direct {v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1729
    .local v2, "st":Ljava/util/StringTokenizer;
    nop

    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1734
    return v1

    .line 1730
    :cond_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1731
    .local v3, "tok":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1732
    const/4 v1, 0x1

    return v1

    .line 1731
    :cond_3
    goto :goto_0
.end method

.method public supportsExtension(Ljava/lang/String;)Z
    .locals 2
    .param p1, "ext"    # Ljava/lang/String;

    .line 1693
    iget-object v0, p0, Lcom/sun/mail/smtp/SMTPTransport;->extMap:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 1694
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1693
    return v0
.end method
