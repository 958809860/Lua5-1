--数组
array = {"Lua", "Tutorial"}
for i = 0,2 do
   print('数组',i,array[i])
end

--读表学习(泛型for)
require("TableEventConfig")
for k,v in pairs(TableEventConfig) do
    print(k,v.name,v.userNum)
    if k == 1007 then
        print('读表学习(泛型for)1007name=',v.name)
    end
    if v.userNum == 9 or v.entryFee == 100 then
        print('读表学习(泛型for)',k)
    end
end

--循环（数值for）
for x = 1,100,9 do
    print('循环（数值for）',x)
end

function f(x)  
    print("循环（数值for）function")  
    return x*2   
end  
for i=1,f(5) do print("循环（数值for）",i)  
end  

--函数
function max(num1,num2)
    if(num1 > num2) then
        result = num1;
    else
        result = num2;
    end
    return result;
end
print('函数max = '..max(10,5))
print('函数max = '..max(100,500))

--函数多返回
numtable = {8,10,23,12,5}
function maximum (a)
    local mi = 1
    local m = a[mi]
    for i,val in ipairs(a) do
       if val > m then
           mi = i
           m = val
       end
    end
    return m, mi
end
a = maximum(numtable) --证明可以只接受前一个返回值
print('函数多返回',a)
a,b = maximum(numtable)
print('函数多返回',b,a)

--函数可变参数使用
function add(...)   --如果有固定参数+可变参数，固定参数必须放在变长参数之前
    local s = 0
    for i, v in pairs{...}do    --{...}表示一个由所有变长参数构成的数组 同local arg ={...}
        s = s + v;
    end
    return s
end
print('函数可变参数使用',add(3,4,5,6,7))

-- 初始化数组
array = {}
for i=1,3 do
    array[i] = {}
      for j=1,3 do
        print('i=',i,'j=',j)
        array[i][j] = i*j
      end
end

for i=1,3 do    -- 访问数组
   for j=1,3 do
      print('初始化数组及访问',array[i][j])
   end
end



