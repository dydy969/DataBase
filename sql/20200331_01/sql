






-- DATE
CREATE TABLE type_test_05 (
    data DATE );

INSERT INTO type_test_05
VALUES ( sysdate );

INSERT INTO type_test_05
VALUES ( '2020/11/21' );

SELECT * FROM type_test_05;

-- 년도를 음수로 사용할 때에는 단독으로 사용 불가
INSERT INTO type_test_05
VALUES ( '-2020/11/21' );

-- to_date 의 서식 S 는 날짜에 포함된 부호를 인식한다
INSERT INTO type_test_05
VALUES ( to_date('-2020/11/21', 'syyyy/mm/dd') );

SELECT to_char(data, 'syyyy/mm/dd hh24:mi:ss')
FROM type_test_05;



INSERT INTO type_test_05
VALUES ( to_date('12/7/9', 'yy/mm/dd') );
INSERT INTO type_test_05
VALUES ( to_date('12/7/9', 'rr/mm/dd') );

INSERT INTO type_test_05
VALUES ( to_date('94/7/9', 'yy/mm/dd') );
INSERT INTO type_test_05
VALUES ( to_date('94/7/9', 'rr/mm/dd') );

SELECT * FROM type_test_05;
SELECT to_char(data, 'yyyy/mm/dd') FROM type_test_05;




-- LONG
CREATE TABLE type_test_06 (
    data LONG );

INSERT INTO type_test_06
VALUES ( '안녕하세요' );
SELECT * FROM type_test_06;


INSERT INTO type_test_06
VALUES ( 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac lectus et magna ullamcorper faucibus. Suspendisse non justo non odio interdum lacinia. Nulla facilisi. Quisque vel libero eget nibh semper pulvinar non vitae purus. Ut dictum, nisi vel consequat consectetur, mauris tortor pharetra felis, ac dictum leo arcu eu leo. Nam condimentum turpis ac porttitor commodo. Cras sed justo sit amet erat eleifend euismod ut a est. Nunc posuere scelerisque condimentum. Aliquam quis nibh congue, interdum augue et, luctus neque. Donec eget scelerisque est.

Donec ac augue sit amet ligula pulvinar consequat. Suspendisse sodales ultricies euismod. Nunc a pulvinar urna, ut porttitor nibh. Proin tincidunt tortor quis ante posuere, ac gravida arcu faucibus. Nullam finibus vehicula posuere. In rhoncus in ex sit amet blandit. Vestibulum mollis tempor sem vitae tempus. Aliquam egestas maximus nibh, eu facilisis arcu egestas sit amet. Donec lacinia quam vitae nisi elementum interdum. In suscipit nulla lacus, ut fringilla sem maximus eleifend. Integer sem nulla, tempus quis leo et, interdum pharetra nunc. Nulla facilisi. Vivamus et mauris leo. Praesent et lectus ex.

Phasellus ut ipsum quis diam tristique tempor sit amet ut turpis. Curabitur in dignissim enim. Cras efficitur tortor nec felis luctus dignissim. Sed nec varius magna. Donec nec ultrices velit, in pulvinar arcu. Curabitur scelerisque cursus fermentum. Cras at ex enim. Suspendisse a odio ut nibh ultricies pellentesque. Quisque mauris risus, posuere vel fermentum eget, molestie eget velit. Nunc semper, arcu non laoreet lacinia, enim dolor consequat purus, sed elementum libero eros vel elit. Sed commodo dapibus sapien, et tristique dolor fringilla vel.

Vivamus magna lectus, semper quis rutrum et, viverra eget est. Donec finibus ullamcorper odio, at sollicitudin nulla porta nec. Nullam viverra scelerisque tellus, et auctor lacus sodales quis. Maecenas pulvinar rhoncus sapien blandit consectetur. Mauris dapibus dui ut ex molestie tristique. Fusce non nisl eget metus dictum ultrices dapibus eget augue. Curabitur est dui, hendrerit molestie enim vel, feugiat viverra elit. Nullam nec lacus vel sem scelerisque cursus. Fusce turpis dolor, lobortis vel justo vel, laoreet imperdiet risus. Curabitur accumsan augue at quam vestibulum, vitae scelerisque enim laoreet. Duis rhoncus urna diam, id dapibus ante accumsan dictum. Sed at elit at ex iaculis pretium. In aliquet fermentum dui, et pharetra lectus tempus a. Curabitur vel sem nec leo eleifend tempus imperdiet nec purus.

Vivamus magna lectus, semper quis rutrum et, viverra eget est. Donec finibus ullamcorper odio, at sollicitudin nulla porta nec. Nullam viverra scelerisque tellus, et auctor lacus sodales quis. Maecenas pulvinar rhoncus sapien blandit consectetur. Mauris dapibus dui ut ex molestie tristique. Fusce non nisl eget metus dictum ultrices dapibus eget augue. Curabitur est dui, hendrerit molestie enim vel, feugiat viverra elit. Nullam nec lacus vel sem scelerisque cursus. Fusce turpis dolor, lobortis vel justo vel, laoreet imperdiet risus. Curabitur accumsan augue at quam vestibulum, vitae scelerisque enim laoreet. Duis rhoncus urna diam, id dapibus ante accumsan dictum. Sed at elit at ex iaculis pretium. In aliquet fermentum dui, et pharetra lectus tempus a. Curabitur vel sem nec leo eleifend tempus imperdiet nec purus.

Vivamus magna lectus, semper quis rutrum et, viverra eget est. Donec finibus ullamcorper odio, at sollicitudin nulla porta nec. Nullam viverra scelerisque tellus, et auctor lacus sodales quis. Maecenas pulvinar rhoncus sapien blandit consectetur. Mauris dapibus dui ut ex molestie tristique. Fusce non nisl eget metus dictum ultrices dapibus eget augue. Curabitur est dui, hendrerit molestie enim vel, feugiat viverra elit. Nullam nec lacus vel sem scelerisque cursus. Fusce turpis dolor, lobortis vel justo vel, laoreet imperdiet risus. Curabitur accumsan augue at quam vestibulum, vitae scelerisque enim laoreet. Duis rhoncus urna diam, id dapibus ante accumsan dictum. Sed at elit at ex iaculis pretium. In aliquet fermentum dui, et pharetra lectus tempus a. Curabitur vel sem nec leo eleifend tempus imperdiet nec purus.

Integer non auctor turpis, at dapibus metus. Sed vestibulum rhoncus elit posuere auctor. Duis hendrerit molestie leo, eget placerat augue. In congue velit neque, non feugiat odio mattis volutpat. Donec euismod velit eu metus fringilla, id fringilla ex finibus. Curabitur tempor libero sed risus blandit porttitor. Quisque vitae mi non orci ornare vehicula non eu felis. Pellentesque condimentum urna vitae lobortis euismod. Donec augue ligula, elementum ac est quis, aliquet convallis justo.' );


INSERT INTO type_test_06
VALUES ( '별 파란 이름자를 까닭입니다. 못 이웃 지나가는 이름과 가슴속에 부끄러운 릴케 하나에 거외다. 무성할 새겨지는 나는 계십니다. 써 남은 무덤 풀이 그러나 딴은 계절이 이름자를 어머님, 봅니다. 이름을 걱정도 흙으로 된 새워 버리었습니다. 이런 오는 흙으로 있습니다. 잔디가 나는 사람들의 계절이 까닭입니다. 다 시인의 않은 별 가을로 있습니다. 이름을 별을 마리아 별 계절이 다 하나에 가슴속에 부끄러운 봅니다. 옥 마리아 별들을 무엇인지 오면 있습니다. 같이 새워 겨울이 계절이 봅니다.

나의 헤는 나는 봅니다. 걱정도 무성할 당신은 많은 있습니다. 다 새워 내린 이국 어머님, 했던 있습니다. 나는 위에도 봄이 내일 봅니다. 보고, 그러나 밤을 계십니다. 별 이제 아스라히 새겨지는 사람들의 보고, 겨울이 까닭입니다. 아름다운 이름자 이름을 무엇인지 오는 북간도에 마리아 하나에 까닭입니다. 우는 때 어머니 헤는 이런 봅니다. 소학교 한 않은 있습니다. 무덤 써 별들을 이 아이들의 계십니다. 별들을 가을로 하나에 멀리 시와 벌써 하나에 경, 시인의 까닭입니다.

겨울이 멀듯이, 라이너 계십니다. 묻힌 무성할 헤는 같이 많은 이 딴은 파란 계십니다. 동경과 사람들의 다 옥 별빛이 계집애들의 버리었습니다. 가난한 하늘에는 시인의 밤이 하나에 슬퍼하는 위에도 아름다운 속의 버리었습니다. 가득 불러 아스라히 오는 거외다. 다하지 남은 아스라히 있습니다. 노새, 없이 너무나 새워 된 거외다. 사람들의 덮어 가득 이런 이름과, 이웃 부끄러운 않은 하나에 거외다. 덮어 않은 별에도 있습니다. 나의 때 내 패, 계집애들의 버리었습니다.

못 이국 불러 토끼, 프랑시스 봄이 아스라히 무엇인지 별 까닭입니다. 아무 위에 덮어 슬퍼하는 소학교 버리었습니다. 가득 딴은 내일 된 아이들의 까닭입니다. 어머니, 풀이 강아지, 까닭입니다. 이름을 그리고 나는 지나가는 별을 이름과, 가난한 쉬이 계십니다. 사랑과 추억과 청춘이 계십니다. 하나 딴은 아무 옥 봅니다. 그러나 겨울이 별 이름과, 않은 벌레는 지나고 계십니다. 잠, 밤을 사람들의 별 지나고 이름과 강아지, 다하지 나는 있습니다. 무엇인지 이름자를 멀리 까닭입니다.

아직 하나에 하나의 봅니다. 그러나 어머니 묻힌 마리아 별 듯합니다. 까닭이요, 잠, 덮어 봅니다. 했던 묻힌 둘 까닭이요, 새워 노새, 슬퍼하는 같이 풀이 듯합니다. 별 자랑처럼 노새, 나의 그리고 이름과 멀리 까닭입니다. 당신은 같이 별 아무 봅니다. 가을로 오는 봄이 까닭이요, 헤는 위에도 경, 계십니다. 남은 별빛이 새워 나의 별 별 까닭입니다. 패, 묻힌 하나에 거외다. 이네들은 시와 쉬이 경, 불러 헤는 차 벌레는 버리었습니다.' );

SELECT * FROM type_test_06;




-- CLOB
CREATE TABLE type_test_07 (
    data CLOB );
    
INSERT INTO type_test_07
VALUES ( 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas scelerisque, justo sed dictum accumsan, mauris turpis volutpat libero, sit amet pharetra velit massa quis turpis. Pellentesque aliquet vulputate molestie. Phasellus egestas est accumsan dui commodo iaculis. Integer iaculis efficitur faucibus. Ut eu enim justo. Nam vehicula posuere nisi, eget egestas velit maximus eget. Vestibulum in nunc lacinia, gravida lorem id, scelerisque elit. In lacinia urna in est luctus, vitae euismod mi luctus. Pellentesque eget pulvinar metus. Nullam aliquet lacus non enim fermentum suscipit. Nam dignissim aliquam leo quis venenatis. Nunc condimentum risus id elit finibus vehicula. Duis turpis eros, condimentum quis felis vitae, ultrices aliquam velit. Nam eu pretium magna, vel commodo orci. Nullam quis sem non sem consectetur efficitur.

Fusce eget varius purus. Donec ultrices varius elementum. Morbi sed pulvinar massa, eget bibendum nunc. Aliquam eget ante est. Fusce ut tempor erat. Praesent auctor, nulla id mollis mollis, velit ante ornare tortor, fringilla ornare tortor felis sit amet ante. Integer a erat in lorem auctor condimentum iaculis cursus dui. Sed at tellus dui. Proin quis egestas nisl. Etiam dictum, est sit amet bibendum rhoncus, dolor turpis maximus nulla, eu rhoncus est eros id lectus. In fermentum non tellus a elementum. Donec sit amet tellus sit amet erat elementum posuere ut vitae ligula.

Donec sodales a leo a sagittis. Pellentesque eu purus ut purus imperdiet convallis. Nullam hendrerit et sapien id ornare. Mauris aliquet ut lectus nec placerat. Donec non erat vitae nunc faucibus tempor. Maecenas vehicula mauris ipsum, eu varius dui imperdiet ut. Phasellus vitae urna convallis risus rhoncus pulvinar. Sed accumsan leo nec erat consectetur, a molestie ex consequat. Etiam laoreet eget felis non facilisis. Donec vitae mattis elit. Mauris mollis, quam sit amet porta vehicula, libero ante sollicitudin diam, quis finibus magna mi nec lorem. Aliquam aliquet leo vitae lorem posuere mattis. Etiam interdum enim sed nisi mollis euismod.

Suspendisse nec cursus mi. Vestibulum ante lectus, aliquam iaculis tempor vel, molestie vitae augue. Nulla ultrices condimentum neque, sit amet ullamcorper massa. Ut suscipit quam nec neque scelerisque, sed mattis ante volutpat. Aenean vehicula risus at venenatis feugiat. Cras eu molestie orci. Pellentesque aliquet ante nunc, a lobortis libero feugiat ut. Morbi consectetur, augue eu fringilla tincidunt, urna purus pellentesque risus, at hendrerit augue libero et arcu. Aliquam interdum viverra erat, pretium imperdiet diam dignissim ac. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin sed enim nibh. Etiam sed enim quis felis sodales sollicitudin.

Sed feugiat pellentesque pharetra. Nunc vitae nisl vitae tortor fermentum consequat non at quam. Integer elementum enim libero, non mollis risus faucibus vitae. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Suspendisse potenti. Suspendisse ornare maximus mi at fringilla. Nullam semper tincidunt ipsum ut posuere. Donec ac tincidunt ipsum.' );

INSERT INTO type_test_07
VALUES ( '인도하겠다는 천자만홍이 설레는 그들의 두손을 튼튼하며, 싶이 봄바람이다. 불어 광야에서 반짝이는 것은 인류의 풀밭에 있는 것은 있으랴? 전인 붙잡아 부패를 되려니와, 약동하다. 길을 거친 생생하며, 앞이 철환하였는가? 같은 구하지 것은 칼이다. 이 아름답고 불러 사막이다. 일월과 생의 시들어 것이다. 가지에 동력은 우리의 못할 힘차게 그것은 때문이다. 피어나는 그들에게 굳세게 것이다.

찾아다녀도, 우리는 보는 피고 어디 듣기만 관현악이며, 만물은 쓸쓸한 것이다. 주며, 황금시대의 되려니와, 것이다. 따뜻한 내려온 인간에 그들은 운다. 아니더면, 방지하는 살 인간이 있는가? 인간에 무한한 보이는 아름답고 뛰노는 보이는 운다. 위하여, 우리의 옷을 두손을 안고, 넣는 가진 대고, 원대하고, 아름다우냐? 수 사라지지 우리의 얼음에 없으면 심장은 풀밭에 부패뿐이다. 가는 하는 있는 하여도 아름다우냐? 그들의 인간의 이상을 못할 같은 그들의 찬미를 같이, 사막이다.

예가 가치를 같이 방지하는 품에 실현에 뜨거운지라, 것이다. 산야에 가치를 노년에게서 속에서 하는 청춘의 사막이다. 싶이 무엇을 풀이 이 때에, 말이다. 그들은 위하여, 청춘의 그리하였는가? 실현에 원질이 영원히 같은 이상 아름다우냐? 전인 쓸쓸한 뜨고, 피다. 인간에 우리의 발휘하기 안고, 따뜻한 피다. 대한 붙잡아 창공에 그리하였는가? 그것을 날카로우나 속에 살았으며, 길지 꽃이 심장의 뼈 말이다. 오아이스도 현저하게 사는가 소리다.이것은 끝에 맺어, 그들은 위하여서. 위하여, 튼튼하며, 인생을 사막이다.

사는가 인생을 두기 철환하였는가? 이상의 그들의 바로 봄바람이다. 능히 온갖 이상, 피부가 커다란 인생에 가치를 하는 트고, 있는가? 두기 살 실로 길을 끝에 인간은 교향악이다. 작고 길지 기관과 없으면, 생명을 품으며, 같이, 영락과 가치를 사막이다. 가지에 대고, 그들은 속에서 곧 위하여 청춘의 있는가? 쓸쓸한 새가 청춘 할지라도 사막이다. 그것을 그들의 우리의 이것을 바이며, 생생하며, 것이다. 따뜻한 심장은 과실이 풀이 가치를 구하지 이상이 사는가 것이다. 그들은 많이 같이 광야에서 두손을 피에 싸인 속에 교향악이다.

설레는 가치를 투명하되 따뜻한 찾아다녀도, 같은 살 듣기만 그리하였는가? 설레는 천고에 밥을 없으면, 이상이 풀이 능히 인간의 보라. 어디 실현에 목숨이 가지에 무엇이 길을 더운지라 소리다.이것은 약동하다. 사랑의 소담스러운 그들의 가는 커다란 그들에게 피다. 돋고, 간에 장식하는 그들의 위하여서. 뜨고, 착목한는 날카로우나 있는 작고 발휘하기 끓는다. 사는가 그와 피부가 트고, 얼음과 위하여, 공자는 옷을 것이다. 불어 끓는 내는 아름다우냐? 같이, 청춘은 온갖 천하를 인생에 별과 하는 하여도 쓸쓸하랴? 그것은 대한 청춘 하는 평화스러운 곳으로 철환하였는가?' );

SELECT * FROM type_test_07;


-- CLOB 데이터 전체 조회
SELECT DBMS_LOB.SUBSTR( data, length(data), 1 )
FROM type_test_07;


CREATE TABLE type_test_08 (
    data VARCHAR(3) );
