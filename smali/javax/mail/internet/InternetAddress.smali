.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;
.source "InternetAddress.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final rfc822phrase:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6830565bb828acb7L

.field private static final specialsNoDot:Ljava/lang/String; = "()<>,;:\\\"[]@"

.field private static final specialsNoDotNoAt:Ljava/lang/String; = "()<>,;:\\\"[]"


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 324
    const-string v0, "()<>@,;:\\\"\t .[]"

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 323
    sput-object v0, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 105
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    .line 107
    .local v1, "a":[Ljavax/mail/internet/InternetAddress;
    array-length v2, v1

    if-ne v2, v0, :cond_0

    .line 116
    const/4 v0, 0x0

    aget-object v2, v1, v0

    iget-object v2, v2, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 117
    aget-object v2, v1, v0

    iget-object v2, v2, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v2, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 118
    aget-object v0, v1, v0

    iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 119
    return-void

    .line 108
    :cond_0
    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal address"

    invoke-direct {v0, v2, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "personal"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    .line 160
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 161
    invoke-virtual {p0, p2, p3}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 133
    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    .line 134
    if-eqz p2, :cond_0

    .line 135
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 136
    :cond_0
    return-void
.end method

.method private static checkAddress(Ljava/lang/String;ZZ)V
    .locals 6
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "routeAddr"    # Z
    .param p2, "validate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 886
    const/4 v0, 0x0

    .line 887
    .local v0, "start":I
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 888
    return-void

    .line 889
    :cond_0
    const/16 v1, 0x40

    if-eqz p1, :cond_4

    .line 894
    const/4 v0, 0x0

    :goto_0
    const-string v2, ",:"

    invoke-static {p0, v2, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    move v3, v2

    .local v3, "i":I
    if-gez v2, :cond_1

    goto :goto_1

    .line 896
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v1, :cond_3

    .line 898
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_2

    .line 900
    add-int/lit8 v0, v3, 0x1

    .line 901
    goto :goto_1

    .line 895
    :cond_2
    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    .line 897
    :cond_3
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal route-addr"

    invoke-direct {v1, v2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 911
    .end local v3    # "i":I
    :cond_4
    :goto_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    move v2, v1

    .local v2, "i":I
    if-ltz v1, :cond_7

    .line 912
    if-eq v2, v0, :cond_6

    .line 914
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v2, v1, :cond_5

    .line 916
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, "local":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "domain":Ljava/lang/String;
    goto :goto_2

    .line 915
    .end local v1    # "local":Ljava/lang/String;
    .end local v3    # "domain":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v3, "Missing domain"

    invoke-direct {v1, v3, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 913
    :cond_6
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v3, "Missing local name"

    invoke-direct {v1, v3, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 928
    :cond_7
    if-nez p2, :cond_c

    .line 935
    move-object v1, p0

    .line 936
    .restart local v1    # "local":Ljava/lang/String;
    const/4 v3, 0x0

    .line 939
    .restart local v3    # "domain":Ljava/lang/String;
    :goto_2
    const-string v4, " \t\n\r"

    invoke-static {p0, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_b

    .line 942
    const-string v4, "()<>,;:\\\"[]@"

    invoke-static {v1, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_a

    .line 945
    if-eqz v3, :cond_9

    const/16 v5, 0x5b

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_9

    .line 946
    invoke-static {v3, v4}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_8

    goto :goto_3

    .line 947
    :cond_8
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal character in domain"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 949
    :cond_9
    :goto_3
    return-void

    .line 943
    :cond_a
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal character in local name"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 940
    :cond_b
    new-instance v4, Ljavax/mail/internet/AddressException;

    const-string v5, "Illegal whitespace in address"

    invoke-direct {v4, v5, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 929
    .end local v1    # "local":Ljava/lang/String;
    .end local v3    # "domain":Ljava/lang/String;
    :cond_c
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v3, "Missing final \'@domain\'"

    invoke-direct {v1, v3, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .locals 5
    .param p0, "session"    # Ljavax/mail/Session;

    .line 502
    const/4 v0, 0x0

    .local v0, "user":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 504
    .local v2, "address":Ljava/lang/String;
    const-string/jumbo v3, "user.name"

    if-nez p0, :cond_0

    .line 505
    :try_start_0
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 506
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 508
    :cond_0
    const-string v4, "mail.from"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 509
    if-nez v2, :cond_6

    .line 510
    const-string v4, "mail.user"

    invoke-virtual {p0, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 511
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 512
    :cond_1
    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 513
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 514
    :cond_3
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 515
    :cond_4
    const-string v3, "mail.host"

    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 516
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 517
    :cond_5
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    .line 518
    .local v3, "me":Ljava/net/InetAddress;
    if-eqz v3, :cond_6

    .line 519
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 524
    .end local v3    # "me":Ljava/net/InetAddress;
    :cond_6
    :goto_0
    if-nez v2, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 525
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 528
    :cond_7
    if-eqz v2, :cond_8

    .line 529
    new-instance v3, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v3, v2}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 532
    :catch_0
    move-exception v3

    goto :goto_1

    .line 531
    :catch_1
    move-exception v3

    goto :goto_1

    .line 530
    :catch_2
    move-exception v3

    .line 533
    :cond_8
    :goto_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;

    .line 1007
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "any"    # Ljava/lang/String;
    .param p2, "start"    # I

    .line 1012
    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1013
    .local v1, "len":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 1017
    .end local v2    # "i":I
    return v0

    .line 1014
    .restart local v2    # "i":I
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_1

    .line 1015
    return v2

    .line 1013
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1018
    .end local v1    # "len":I
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "e":Ljava/lang/StringIndexOutOfBoundsException;
    return v0
.end method

.method private isSimple()Z
    .locals 2

    .line 956
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static lengthOfFirstSegment(Ljava/lang/String;)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .line 469
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 470
    return v1

    .line 472
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method private static lengthOfLastSegment(Ljava/lang/String;I)I
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "used"    # I

    .line 482
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 483
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 485
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 546
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 569
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
    .locals 19
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .param p2, "parseHdr"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 608
    move-object/from16 v0, p0

    const/4 v1, -0x1

    .local v1, "start_personal":I
    const/4 v2, -0x1

    .line 609
    .local v2, "end_personal":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 610
    .local v3, "length":I
    const/4 v4, 0x0

    .line 611
    .local v4, "in_group":Z
    const/4 v5, 0x0

    .line 612
    .local v5, "route_addr":Z
    const/4 v6, 0x0

    .line 614
    .local v6, "rfc822":Z
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 617
    .local v7, "v":Ljava/util/Vector;
    const/4 v8, -0x1

    move v9, v8

    .local v9, "end":I
    move v10, v8

    .local v10, "start":I
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_0
    const/4 v12, 0x0

    if-lt v11, v3, :cond_8

    .line 822
    if-ltz v10, :cond_7

    .line 828
    if-ne v9, v8, :cond_0

    .line 829
    move v9, v11

    .line 830
    :cond_0
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 831
    .local v8, "addr":Ljava/lang/String;
    if-nez v6, :cond_3

    if-nez p1, :cond_3

    if-eqz p2, :cond_1

    goto :goto_2

    .line 843
    :cond_1
    new-instance v13, Ljava/util/StringTokenizer;

    invoke-direct {v13, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 844
    .local v13, "st":Ljava/util/StringTokenizer;
    nop

    :goto_1
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-nez v14, :cond_2

    goto :goto_3

    .line 845
    :cond_2
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 846
    .local v14, "a":Ljava/lang/String;
    invoke-static {v14, v12, v12}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 847
    new-instance v15, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v15}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 848
    .local v15, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v15, v14}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v7, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 832
    .end local v13    # "st":Ljava/util/StringTokenizer;
    .end local v14    # "a":Ljava/lang/String;
    .end local v15    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_3
    :goto_2
    if-nez p1, :cond_4

    if-nez p2, :cond_5

    .line 833
    :cond_4
    invoke-static {v8, v5, v12}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 834
    :cond_5
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 835
    .local v12, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v12, v8}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 836
    if-ltz v1, :cond_6

    .line 837
    nop

    .line 838
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 837
    invoke-static {v13}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 840
    :cond_6
    invoke-virtual {v7, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 854
    .end local v8    # "addr":Ljava/lang/String;
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_7
    :goto_3
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v8, v8, [Ljavax/mail/internet/InternetAddress;

    .line 855
    .local v8, "a":[Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v7, v8}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 856
    return-object v8

    .line 618
    .end local v8    # "a":[Ljavax/mail/internet/InternetAddress;
    :cond_8
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 620
    .local v13, "c":C
    const/16 v14, 0x9

    if-eq v13, v14, :cond_38

    const/16 v14, 0xa

    if-eq v13, v14, :cond_38

    const/16 v14, 0xd

    if-eq v13, v14, :cond_38

    const/16 v14, 0x20

    if-eq v13, v14, :cond_38

    const-string v14, "Missing \'\"\'"

    const/16 v12, 0x22

    if-eq v13, v12, :cond_32

    const/16 v15, 0x2c

    if-eq v13, v15, :cond_28

    const/16 v15, 0x3e

    if-eq v13, v15, :cond_27

    const/16 v15, 0x5b

    if-eq v13, v15, :cond_22

    const/16 v15, 0x29

    const/16 v12, 0x28

    if-eq v13, v12, :cond_19

    if-eq v13, v15, :cond_18

    packed-switch v13, :pswitch_data_0

    .line 816
    if-ne v10, v8, :cond_39

    .line 817
    move v10, v11

    goto/16 :goto_15

    .line 657
    :pswitch_0
    const/4 v6, 0x1

    .line 658
    if-nez v5, :cond_13

    .line 660
    if-nez v4, :cond_a

    .line 661
    move v1, v10

    .line 662
    if-ltz v1, :cond_9

    .line 663
    move v2, v11

    .line 664
    :cond_9
    add-int/lit8 v10, v11, 0x1

    move v12, v1

    move v15, v2

    move/from16 v18, v10

    goto :goto_4

    .line 660
    :cond_a
    move v12, v1

    move v15, v2

    move/from16 v18, v10

    .line 667
    .end local v1    # "start_personal":I
    .end local v2    # "end_personal":I
    .end local v10    # "start":I
    .local v12, "start_personal":I
    .local v15, "end_personal":I
    .local v18, "start":I
    :goto_4
    const/4 v1, 0x0

    .line 669
    .local v1, "inquote":Z
    add-int/lit8 v11, v11, 0x1

    :goto_5
    if-lt v11, v3, :cond_b

    goto :goto_6

    .line 670
    :cond_b
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 671
    const/16 v2, 0x22

    if-eq v13, v2, :cond_11

    const/16 v2, 0x3e

    if-eq v13, v2, :cond_d

    const/16 v10, 0x5c

    if-eq v13, v10, :cond_c

    goto :goto_8

    .line 673
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 674
    goto :goto_8

    .line 679
    :cond_d
    if-eqz v1, :cond_e

    goto :goto_8

    .line 686
    :cond_e
    :goto_6
    if-lt v11, v3, :cond_10

    .line 687
    if-eqz v1, :cond_f

    .line 688
    new-instance v2, Ljavax/mail/internet/AddressException;

    invoke-direct {v2, v14, v0, v11}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 690
    :cond_f
    new-instance v2, Ljavax/mail/internet/AddressException;

    const-string v8, "Missing \'>\'"

    invoke-direct {v2, v8, v0, v11}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v2

    .line 692
    :cond_10
    const/4 v2, 0x1

    .line 693
    .end local v5    # "route_addr":Z
    .local v2, "route_addr":Z
    move v5, v11

    .line 694
    .end local v9    # "end":I
    .local v5, "end":I
    move v9, v5

    move v1, v12

    move/from16 v10, v18

    move v5, v2

    move v2, v15

    goto/16 :goto_15

    .line 676
    .end local v2    # "route_addr":Z
    .local v5, "route_addr":Z
    .restart local v9    # "end":I
    :cond_11
    const/16 v2, 0x3e

    if-eqz v1, :cond_12

    const/4 v10, 0x0

    goto :goto_7

    :cond_12
    const/4 v10, 0x1

    :goto_7
    move v1, v10

    .line 677
    nop

    .line 669
    :goto_8
    const/4 v10, 0x1

    add-int/2addr v11, v10

    goto :goto_5

    .line 659
    .end local v12    # "start_personal":I
    .end local v15    # "end_personal":I
    .end local v18    # "start":I
    .local v1, "start_personal":I
    .local v2, "end_personal":I
    .restart local v10    # "start":I
    :cond_13
    new-instance v8, Ljavax/mail/internet/AddressException;

    const-string v12, "Extra route-addr"

    invoke-direct {v8, v12, v0, v11}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 791
    :pswitch_1
    if-ne v10, v8, :cond_14

    .line 792
    move v10, v11

    .line 793
    :cond_14
    if-eqz v4, :cond_16

    .line 796
    const/4 v4, 0x0

    .line 797
    if-ne v10, v8, :cond_15

    .line 798
    move v10, v11

    .line 799
    :cond_15
    new-instance v12, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v12}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 800
    .local v12, "ma":Ljavax/mail/internet/InternetAddress;
    add-int/lit8 v9, v11, 0x1

    .line 801
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v7, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 804
    const/4 v5, 0x0

    .line 805
    move v9, v8

    move v10, v8

    .line 806
    goto/16 :goto_15

    .line 794
    .end local v12    # "ma":Ljavax/mail/internet/InternetAddress;
    :cond_16
    new-instance v8, Ljavax/mail/internet/AddressException;

    .line 795
    nop

    .line 794
    const-string v12, "Illegal semicolon, not in group"

    invoke-direct {v8, v12, v0, v11}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 782
    :pswitch_2
    const/4 v6, 0x1

    .line 783
    if-nez v4, :cond_17

    .line 785
    const/4 v4, 0x1

    .line 786
    if-ne v10, v8, :cond_39

    .line 787
    move v10, v11

    .line 788
    goto/16 :goto_15

    .line 784
    :cond_17
    new-instance v8, Ljavax/mail/internet/AddressException;

    const-string v12, "Nested group"

    invoke-direct {v8, v12, v0, v11}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 654
    :cond_18
    new-instance v8, Ljavax/mail/internet/AddressException;

    const-string v12, "Missing \'(\'"

    invoke-direct {v8, v12, v0, v11}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 624
    :cond_19
    const/4 v6, 0x1

    .line 625
    if-ltz v10, :cond_1a

    if-ne v9, v8, :cond_1a

    .line 626
    move v9, v11

    .line 627
    :cond_1a
    if-ne v1, v8, :cond_1b

    .line 628
    add-int/lit8 v1, v11, 0x1

    .line 629
    :cond_1b
    add-int/lit8 v11, v11, 0x1

    const/4 v14, 0x1

    .local v14, "nesting":I
    :goto_9
    if-ge v11, v3, :cond_20

    if-gtz v14, :cond_1c

    goto :goto_b

    .line 631
    :cond_1c
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 632
    if-eq v13, v12, :cond_1f

    if-eq v13, v15, :cond_1e

    const/16 v12, 0x5c

    if-eq v13, v12, :cond_1d

    goto :goto_a

    .line 634
    :cond_1d
    add-int/lit8 v11, v11, 0x1

    .line 635
    goto :goto_a

    .line 640
    :cond_1e
    add-int/lit8 v14, v14, -0x1

    .line 641
    goto :goto_a

    .line 637
    :cond_1f
    add-int/lit8 v14, v14, 0x1

    .line 638
    nop

    .line 630
    :goto_a
    const/4 v12, 0x1

    add-int/2addr v11, v12

    const/16 v12, 0x28

    goto :goto_9

    .line 646
    :cond_20
    :goto_b
    if-gtz v14, :cond_21

    .line 648
    add-int/lit8 v11, v11, -0x1

    .line 649
    if-ne v2, v8, :cond_39

    .line 650
    move v2, v11

    .line 651
    goto/16 :goto_15

    .line 647
    :cond_21
    new-instance v8, Ljavax/mail/internet/AddressException;

    const-string v12, "Missing \')\'"

    invoke-direct {v8, v12, v0, v11}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 720
    .end local v14    # "nesting":I
    :cond_22
    const/4 v12, 0x1

    .line 722
    .end local v6    # "rfc822":Z
    .local v12, "rfc822":Z
    add-int/lit8 v11, v11, 0x1

    :goto_c
    if-lt v11, v3, :cond_23

    goto :goto_d

    .line 723
    :cond_23
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 724
    const/16 v6, 0x5c

    if-eq v13, v6, :cond_26

    const/16 v6, 0x5d

    if-eq v13, v6, :cond_24

    goto :goto_e

    .line 729
    :cond_24
    nop

    .line 734
    :goto_d
    if-ge v11, v3, :cond_25

    move v6, v12

    goto/16 :goto_15

    .line 735
    :cond_25
    new-instance v6, Ljavax/mail/internet/AddressException;

    const-string v8, "Missing \']\'"

    invoke-direct {v6, v8, v0, v11}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v6

    .line 726
    :cond_26
    add-int/lit8 v11, v11, 0x1

    .line 727
    nop

    .line 722
    :goto_e
    const/4 v6, 0x1

    add-int/2addr v11, v6

    goto :goto_c

    .line 696
    .end local v12    # "rfc822":Z
    .restart local v6    # "rfc822":Z
    :cond_27
    new-instance v8, Ljavax/mail/internet/AddressException;

    const-string v12, "Missing \'<\'"

    invoke-direct {v8, v12, v0, v11}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 739
    :cond_28
    if-ne v10, v8, :cond_29

    .line 740
    const/4 v5, 0x0

    .line 741
    const/4 v6, 0x0

    .line 742
    move v9, v8

    move v10, v8

    .line 743
    goto/16 :goto_15

    .line 745
    :cond_29
    if-eqz v4, :cond_2a

    .line 746
    const/4 v5, 0x0

    .line 747
    goto/16 :goto_15

    .line 750
    :cond_2a
    if-ne v9, v8, :cond_2b

    .line 751
    move v9, v11

    .line 752
    :cond_2b
    invoke-virtual {v0, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 753
    .local v12, "addr":Ljava/lang/String;
    if-nez v6, :cond_2e

    if-nez p1, :cond_2e

    if-eqz p2, :cond_2c

    goto :goto_10

    .line 766
    :cond_2c
    new-instance v14, Ljava/util/StringTokenizer;

    invoke-direct {v14, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 767
    .local v14, "st":Ljava/util/StringTokenizer;
    nop

    :goto_f
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-nez v15, :cond_2d

    goto :goto_11

    .line 768
    :cond_2d
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v15

    .line 769
    .local v15, "a":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-static {v15, v8, v8}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 770
    new-instance v8, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v8}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 771
    .local v8, "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v8, v15}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v8, -0x1

    goto :goto_f

    .line 754
    .end local v8    # "ma":Ljavax/mail/internet/InternetAddress;
    .end local v14    # "st":Ljava/util/StringTokenizer;
    .end local v15    # "a":Ljava/lang/String;
    :cond_2e
    :goto_10
    if-nez p1, :cond_2f

    if-nez p2, :cond_30

    .line 755
    :cond_2f
    const/4 v8, 0x0

    invoke-static {v12, v5, v8}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 756
    :cond_30
    new-instance v8, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v8}, Ljavax/mail/internet/InternetAddress;-><init>()V

    .line 757
    .restart local v8    # "ma":Ljavax/mail/internet/InternetAddress;
    invoke-virtual {v8, v12}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    .line 758
    if-ltz v1, :cond_31

    .line 759
    nop

    .line 760
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 759
    invoke-static {v14}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v8, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 761
    const/4 v14, -0x1

    move v2, v14

    move v1, v14

    .line 763
    :cond_31
    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 776
    .end local v8    # "ma":Ljavax/mail/internet/InternetAddress;
    :goto_11
    const/4 v5, 0x0

    .line 777
    const/4 v6, 0x0

    .line 778
    const/4 v8, -0x1

    move v9, v8

    move v10, v8

    .line 779
    goto :goto_15

    .line 699
    .end local v12    # "addr":Ljava/lang/String;
    :cond_32
    const/4 v6, 0x1

    .line 700
    if-ne v10, v8, :cond_33

    .line 701
    move v10, v11

    .line 703
    :cond_33
    add-int/lit8 v11, v11, 0x1

    :goto_12
    if-lt v11, v3, :cond_34

    goto :goto_14

    .line 704
    :cond_34
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 705
    const/16 v12, 0x22

    if-eq v13, v12, :cond_36

    const/16 v15, 0x5c

    if-eq v13, v15, :cond_35

    goto :goto_13

    .line 707
    :cond_35
    add-int/lit8 v11, v11, 0x1

    .line 708
    nop

    .line 703
    :goto_13
    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 710
    :cond_36
    nop

    .line 715
    :goto_14
    if-ge v11, v3, :cond_37

    goto :goto_15

    .line 716
    :cond_37
    new-instance v8, Ljavax/mail/internet/AddressException;

    invoke-direct {v8, v14, v0, v11}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v8

    .line 813
    :cond_38
    nop

    .line 617
    :cond_39
    :goto_15
    const/4 v12, 0x1

    add-int/2addr v11, v12

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .locals 1
    .param p0, "addresslist"    # Ljava/lang/String;
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 594
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    return-object v0
.end method

.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "phrase"    # Ljava/lang/String;

    .line 327
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 328
    .local v0, "len":I
    const/4 v1, 0x0

    .line 330
    .local v1, "needQuoting":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x22

    if-lt v2, v0, :cond_1

    .line 351
    .end local v2    # "i":I
    if-eqz v1, :cond_0

    .line 352
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v0, 0x2

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 353
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 356
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    return-object p0

    .line 331
    .local v2, "i":I
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 332
    .local v4, "c":C
    const/16 v5, 0x5c

    if-eq v4, v3, :cond_6

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 345
    :cond_2
    const/16 v3, 0x20

    if-ge v4, v3, :cond_3

    const/16 v3, 0xd

    if-eq v4, v3, :cond_3

    const/16 v3, 0xa

    if-eq v4, v3, :cond_3

    const/16 v3, 0x9

    if-ne v4, v3, :cond_4

    .line 346
    :cond_3
    const/16 v3, 0x7f

    if-ge v4, v3, :cond_4

    sget-object v3, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_5

    .line 348
    :cond_4
    const/4 v1, 0x1

    .line 330
    .end local v4    # "c":C
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    .restart local v4    # "c":C
    :cond_6
    :goto_1
    new-instance v6, Ljava/lang/StringBuffer;

    add-int/lit8 v7, v0, 0x3

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 335
    .local v6, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-lt v7, v0, :cond_7

    .line 343
    .end local v7    # "j":I
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 337
    .restart local v7    # "j":I
    :cond_7
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 338
    .local v8, "cc":C
    if-eq v8, v3, :cond_8

    if-ne v8, v5, :cond_9

    .line 340
    :cond_8
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 341
    :cond_9
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 336
    .end local v8    # "cc":C
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .locals 1
    .param p0, "addresses"    # [Ljavax/mail/Address;

    .line 416
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .locals 6
    .param p0, "addresses"    # [Ljavax/mail/Address;
    .param p1, "used"    # I

    .line 440
    if-eqz p0, :cond_4

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 443
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 445
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_1

    .line 461
    .end local v1    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 446
    .restart local v1    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 447
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 448
    add-int/lit8 p1, p1, 0x2

    .line 451
    :cond_2
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v3

    .line 453
    .local v3, "len":I
    add-int v4, p1, v3

    const/16 v5, 0x4c

    if-le v4, v5, :cond_3

    .line 454
    const-string v4, "\r\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 455
    const/16 p1, 0x8

    .line 457
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    .line 445
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "len":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    .end local v0    # "sb":Ljava/lang/StringBuffer;
    .end local v1    # "i":I
    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .line 360
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 363
    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 364
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 365
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 371
    .end local v3    # "i":I
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 366
    .restart local v3    # "i":I
    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 367
    .local v4, "c":C
    if-ne v4, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v3, v5, :cond_1

    .line 368
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 369
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 365
    .end local v4    # "c":C
    add-int/2addr v3, v1

    goto :goto_0

    .line 374
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :cond_2
    :goto_1
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, "a":Ljavax/mail/internet/InternetAddress;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/InternetAddress;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;

    .line 381
    instance-of v0, p1, Ljavax/mail/internet/InternetAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 382
    return v1

    .line 384
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "s":Ljava/lang/String;
    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 386
    return v3

    .line 387
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    return v3

    .line 390
    :cond_2
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .locals 5
    .param p1, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 986
    const/4 v0, 0x0

    .line 987
    .local v0, "groups":Ljava/util/Vector;
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 989
    .local v1, "addr":Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 990
    return-object v3

    .line 991
    :cond_0
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 992
    .local v2, "ix":I
    if-gez v2, :cond_1

    .line 993
    return-object v3

    .line 995
    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 997
    .local v3, "list":Ljava/lang/String;
    invoke-static {v3, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v4

    return-object v4
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 2

    .line 251
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 252
    return-object v0

    .line 254
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 256
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 262
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-object v1

    .line 266
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 181
    const-string/jumbo v0, "rfc822"

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 397
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 398
    const/4 v0, 0x0

    return v0

    .line 400
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGroup()Z
    .locals 2

    .line 970
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 971
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 970
    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 228
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 229
    if-eqz p1, :cond_0

    .line 230
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    .line 232
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 233
    :goto_0
    return-void
.end method

.method public setPersonal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 208
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    .line 209
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 210
    invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_0
    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    .line 213
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 277
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 279
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v0

    .line 282
    :cond_0
    :goto_0
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    const-string v1, ">"

    if-eqz v0, :cond_1

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " <"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 284
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 287
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "<"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    :cond_3
    :goto_1
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .locals 4

    .line 298
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "p":Ljava/lang/String;
    const-string v1, ">"

    if-eqz v0, :cond_0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 301
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 302
    :cond_2
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v1
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    .line 870
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    .line 871
    return-void
.end method
